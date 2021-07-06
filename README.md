## Yeoman generator for EDA

This generator will create the following apex classes
- View Model
- Controller
- View Mapper
- Service
- Mapper
- Model
- Sample test classes

Based on [generator-sfdx](https://github.com/mohan-chinnappan-n/yeoman-generator-sfdx)

## NPM repo location:

TBD

### Install

```
# checkout the generator from GIT
$ git checkout https://github.com/iskander-sfdc/yo-eda
# Install packages
$ npm install
# Link the generator locally
$ sudo npm link

```


### Usage Demo

1. Navigate to the target project folder or open it in the vscode
2. Run the following command from the terminal window

```
$ yo sfdo-eda ModelName
```

3. Select which classes you want to generate
4. Input API version, subfolder name, class names or press enter to use defaults
5. The classes will be generated in `/force-app/main/{subFolderName}/classes/` folder

### Example

```bash

$ yo sfdo-eda ProductRegistry

     _-----_     
    |       |    ╭──────────────────────────╮
    |--(o)--|    │    Welcome to EDA Code   │
   `---------´   │        Generator!        │
    ( _´U`_ )    ╰──────────────────────────╯
    /___A___\   /
     |  ~  |     
   __'.___.'__   
 ´   `  |° ´ Y ` 

To generate EDA classes please answer the following questions:
? Choose classes you want to generate: Model, Mapper, Service, View Model, Controller
? API version 52.0
? force-app/main subfolder default
? Controller Class Name ProductRegistryController
? VMapper Class Name ProductRegistryVMapper
? Service Class Name ProductRegistryService
? VModel Class Name ProductRegistryVModel
? model Class Name ProductRegistryModel
? mapper Class Name ProductRegistryMapper
=========================
modelName:  ProductRegistry
features:  [ 'model', 'mapper', 'service', 'viewModel', 'controller' ]
apiVersion:  52.0
subFolderName:  default
controllerClassName:  ProductRegistryController
vMapperClassName:  ProductRegistryVMapper
serviceClassName:  ProductRegistryService
vModelClassName:  ProductRegistryVModel
modelClassName:  ProductRegistryModel
mapperClassName:  ProductRegistryMapper
=========================
Creating Apex classes...
Destination root: /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA
Creating Apex class ProductRegistryController
Creating file /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA/force-app/main/default/classes/ProductRegistryController.cls
Creating file /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA/force-app/main/default/classes/ProductRegistryController.cls-meta.xml
Creating Apex class ProductRegistryController_TEST
Creating file /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA/force-app/main/default/classes/ProductRegistryController_TEST.cls
Creating file /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA/force-app/main/default/classes/ProductRegistryController_TEST.cls-meta.xml
Creating Apex class ProductRegistryService
Creating file /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA/force-app/main/default/classes/ProductRegistryService.cls
Creating file /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA/force-app/main/default/classes/ProductRegistryService.cls-meta.xml
Creating Apex class ProductRegistryService_TEST
Creating file /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA/force-app/main/default/classes/ProductRegistryService_TEST.cls
Creating file /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA/force-app/main/default/classes/ProductRegistryService_TEST.cls-meta.xml
Creating Apex class ProductRegistryMapper
Creating file /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA/force-app/main/default/classes/ProductRegistryMapper.cls
Creating file /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA/force-app/main/default/classes/ProductRegistryMapper.cls-meta.xml
Creating Apex class ProductRegistryMapper_TEST
Creating file /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA/force-app/main/default/classes/ProductRegistryMapper_TEST.cls
Creating file /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA/force-app/main/default/classes/ProductRegistryMapper_TEST.cls-meta.xml
Creating Apex class ProductRegistryVModel
Creating file /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA/force-app/main/default/classes/ProductRegistryVModel.cls
Creating file /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA/force-app/main/default/classes/ProductRegistryVModel.cls-meta.xml
Creating Apex class ProductRegistryVModel_TEST
Creating file /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA/force-app/main/default/classes/ProductRegistryVModel_TEST.cls
Creating file /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA/force-app/main/default/classes/ProductRegistryVModel_TEST.cls-meta.xml
Creating Apex class ProductRegistryModel
Creating file /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA/force-app/main/default/classes/ProductRegistryModel.cls
Creating file /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA/force-app/main/default/classes/ProductRegistryModel.cls-meta.xml
Creating Apex class ProductRegistryModel_TEST
Creating file /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA/force-app/main/default/classes/ProductRegistryModel_TEST.cls
Creating file /Users/imukhamedgaliyev/Documents/SalesforceOrg/EDA/force-app/main/default/classes/ProductRegistryModel_TEST.cls-meta.xml
Finished creating Apex classes.
   create force-app/main/default/classes/ProductRegistryController.cls
   create force-app/main/default/classes/ProductRegistryController.cls-meta.xml
   create force-app/main/default/classes/ProductRegistryController_TEST.cls
   create force-app/main/default/classes/ProductRegistryController_TEST.cls-meta.xml
   create force-app/main/default/classes/ProductRegistryService.cls
   create force-app/main/default/classes/ProductRegistryService.cls-meta.xml
   create force-app/main/default/classes/ProductRegistryService_TEST.cls
   create force-app/main/default/classes/ProductRegistryService_TEST.cls-meta.xml
   create force-app/main/default/classes/ProductRegistryMapper.cls
   create force-app/main/default/classes/ProductRegistryMapper.cls-meta.xml
   create force-app/main/default/classes/ProductRegistryMapper_TEST.cls
   create force-app/main/default/classes/ProductRegistryMapper_TEST.cls-meta.xml
   create force-app/main/default/classes/ProductRegistryVModel.cls
   create force-app/main/default/classes/ProductRegistryVModel.cls-meta.xml
   create force-app/main/default/classes/ProductRegistryVModel_TEST.cls
   create force-app/main/default/classes/ProductRegistryVModel_TEST.cls-meta.xml
   create force-app/main/default/classes/ProductRegistryModel.cls
   create force-app/main/default/classes/ProductRegistryModel.cls-meta.xml
   create force-app/main/default/classes/ProductRegistryModel_TEST.cls
   create force-app/main/default/classes/ProductRegistryModel_TEST.cls-meta.xml

No change to package.json was detected. No package manager install will be executed.

     _-----_     
    |       |    ╭──────────────────────────╮
    |--(o)--|    │      Code generation     │
   `---------´   │     completed, enjoy!    │
    ( _´U`_ )    ╰──────────────────────────╯
    /___A___\   /
     |  ~  |     
   __'.___.'__   
 ´   `  |° ´ Y ` 
 ```


