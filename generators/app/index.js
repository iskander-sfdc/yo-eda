var Generator = require("yeoman-generator");
var shell = require("shelljs");

var chalk = require("chalk");
var yosay = require("yosay");

module.exports = class extends (
  Generator
) {
  constructor(args, opts) {
    super(args, opts);

    // This makes `appname` a required argument.
    this.argument("businessObjectName", { type: String, required: true });

    // And you can then access it later; e.g.
    this.log("Creating code for " + this.options.businessObjectName);
  }

  // composing: http://yeoman.io/authoring/composability.html
  //

  initializing() {
    this.log(yosay(chalk.red("Welcome to EDA Code Generator!")));

    this.log(
      chalk.green("To generate code please provide the following class names")
    );
    this.log(
      chalk.green(
        "Input None if you don't want to generate a certain class"
      )
    );
  }
  prompting() {
    return this.prompt([
      {
        type: "input",
        name: "apiVersion", // binding variable
        message: "API version",
        default: "52.0",
      },
      {
        type: "input",
        name: "subFolderName", // binding variable
        message: "force-app/main subfolder",
        default: "default",
      },

      {
        type: "input",
        name: "controllerClassName", // binding variable
        message: "Controller Class Name",
        default: this.options.businessObjectName + "Controller",
      },

      {
        type: "input",
        name: "vMapperClassName", // binding variable
        message: "VMapper Class Name",
        default: this.options.businessObjectName + "VMapper",
      },

      {
        type: "input",
        name: "serviceClassName", // binding variable
        message: "Service Class Name",
        default: this.options.businessObjectName + "Service",
      },

      {
        type: "input",
        name: "vModelClassName", // binding variable
        message: "VModel Class Name",
        default: this.options.businessObjectName + "VModel",
      },

      {
        type: "input",
        name: "modelClassName", // binding variable
        message: "model Class Name",
        default: this.options.businessObjectName + "Model",
      },

      {
        type: "input",
        name: "mapperClassName", // binding variable
        message: "mapper Class Name",
        default: this.options.businessObjectName + "Mapper",
      },

    ]).then((answers) => {
      this.log("=========================");

      this.log("modelName: ", this.options.businessObjectName);

      this.log("apiVersion: ", answers.apiVersion);
      this.options.apiVersion = answers.apiVersion;

      this.log("subFolderName: ", answers.subFolderName);
      this.options.subFolderName = answers.subFolderName;

      this.log("controllerClassName: ", answers.controllerClassName);
      this.options.controllerClassName = answers.controllerClassName;

      this.log("vMapperClassName: ", answers.vMapperClassName);
      this.options.vMapperClassName = answers.vMapperClassName;

      this.log("serviceClassName: ", answers.serviceClassName);
      this.options.serviceClassName = answers.serviceClassName;

      this.log("vModelClassName: ", answers.vModelClassName);
      this.options.vModelClassName = answers.vModelClassName;

      this.log("modelClassName: ", answers.modelClassName);
      this.options.modelClassName = answers.modelClassName;

      this.log("mapperClassName: ", answers.mapperClassName);
      this.options.mapperClassName = answers.mapperClassName;

      /*
      this.log(chalk.green("Creating folders..."));

      shell.mkdir(
        "-p",
        this.destinationRoot() +
          "/" +
          this.options.businessObjectName +
          "/config"
      );
      shell.mkdir(
        "-p",
        this.destinationRoot() +
          "/" +
          this.options.businessObjectName +
          "/force-app/main/default/classes"
      );
      shell.mkdir(
        "-p",
        this.destinationRoot() +
          "/" +
          this.options.businessObjectName +
          "/force-app/main/default/tests"
      );
      shell.mkdir(
        "-p",
        this.destinationRoot() +
          "/" +
          this.options.businessObjectName +
          "/force-app/main/default/aura"
      );
      this.log(chalk.green("Creating folders... completed."));
      */

      this.log("=========================");
    });
  }

  _processApexClassTemplates(apexClassName, apexTemplateName) {
    this.log(chalk.green("Creating Apex class " + apexClassName));
    this.log('Creating file ' + this.destinationRoot()+ "/force-app/main/"+ this.options.subFolderName + "/classes/" + apexClassName + ".cls");
    this.fs.copyTpl(
      this.templatePath(apexTemplateName),
      this.destinationRoot() + "/force-app/main/"+ this.options.subFolderName + "/classes/" + apexClassName + ".cls",
      {
        apiVersion: this.options.apiVersion,
        controllerClassName: this.options.controllerClassName,
        vMapperClassName: this.options.vMapperClassName,
        serviceClassName: this.options.serviceClassName,
        vModelClassName: this.options.vModelClassName,
        modelClassName: this.options.modelClassName,
        mapperClassName: this.options.mapperClassName,
        modelName: this.options.businessObjectName
      }
    );
    this.log('Creating file ' + this.destinationRoot() + "/force-app/main/"+ this.options.subFolderName + "/classes/" + apexClassName + ".cls-meta.xml");
    this.fs.copyTpl(
      this.templatePath(apexTemplateName + "-meta.xml"),
      this.destinationRoot() + "/force-app/main/"+ this.options.subFolderName + "/classes/" + apexClassName + ".cls-meta.xml",
      { apiVersion: this.options.apiVersion }
    );
  }

  writing() {
    // apex

    this.log(chalk.green("Creating Apex classes..."));
    this.log('Destination root: ' + this.destinationRoot());

    if (this.options.controllerClassName.toLowerCase() != 'none') {
      this._processApexClassTemplates(
        this.options.controllerClassName,
        "apex/DemoController.cls"
      );
      this._processApexClassTemplates(
        this.options.controllerClassName + "_TEST",
        "apexTests/DemoController_TEST.cls"
      );
    }
    if (this.options.vMapperClassName.toLowerCase() != 'none') {
      this._processApexClassTemplates(
        this.options.vMapperClassName,
        "apex/DemoVMapper.cls"
      );
      this._processApexClassTemplates(
        this.options.vMapperClassName + "_TEST",
        "apexTests/DemoVMapper_TEST.cls"
      );
    }
    if (this.options.serviceClassName.toLowerCase() != 'none') {
      this._processApexClassTemplates(
        this.options.serviceClassName,
        "apex/DemoService.cls"
      );
      this._processApexClassTemplates(
        this.options.serviceClassName + "_TEST",
        "apexTests/DemoService_TEST.cls"
      );
    }
    if (this.options.mapperClassName.toLowerCase() != 'none') {
      this._processApexClassTemplates(
        this.options.mapperClassName,
        "apex/DemoMapper.cls"
      );
      this._processApexClassTemplates(
        this.options.mapperClassName + "_TEST",
        "apexTests/DemoMapper_TEST.cls"
      );
    }
    if (this.options.vModelClassName.toLowerCase() != 'none') {
      this._processApexClassTemplates(
        this.options.vModelClassName,
        "apex/DemoVModel.cls"
      );
      this._processApexClassTemplates(
        this.options.vModelClassName + "_TEST",
        "apexTests/DemoVModel_TEST.cls"
      );
    }
    if (this.options.modelClassName.toLowerCase() != 'none') {
      this._processApexClassTemplates(
        this.options.modelClassName,
        "apex/DemoModel.cls"
      );
      this._processApexClassTemplates(
        this.options.modelClassName + "_TEST",
        "apexTests/DemoModel_TEST.cls"
      );
    }
    this.log(chalk.green("Finished creating Apex classes."));

  }

  end() {
    this.log(yosay(chalk.green("Code generation completed, enjoy!")));
  }
};
