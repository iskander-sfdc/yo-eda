/*
    Copyright (c) 2021, Salesforce.org
    All rights reserved.
    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this List of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this List of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of Salesforce.org nor the names of
      its contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.
    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
    "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
    LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
    FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
    COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
    INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
    BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
    LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
    CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
    LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
    ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
    POSSIBILITY OF SUCH DAMAGE.
*/
/**
 * @author Salesforce.org
 * @date 2021
 * @group
 * @group-content ../../ApexDocContent/Tests.htm
 * @description Test class for <%=controllerClassName%> class.
 */
@isTest
private with sharing class <%=controllerClassName%>_TEST {

    /****************************************************************************************
     * @description Test method to verify locate<%=vMapperClassName%>() returns an instance of
     * the <%=vMapperClassName%> class.
     ****************************************************************************************/
    @isTest
    private static void locate<%=vMapperClassName%>Valid() {
        Test.startTest();
        <%=vMapperClassName%> <%=vMapperClassName%>Instance = <%=controllerClassName%>.locate<%=vMapperClassName%>();
        Test.stopTest();

        System.assertEquals(
            <%=vMapperClassName%>.getInstance(),
            <%=vMapperClassName%>Instance,
            'Should return instance of <%=vMapperClassName%> class.'
        );
    }

    /****************************************************************************************
     * @description Test method to verify <%=serviceClassName%>() returns an instance of
     * the <%=serviceClassName%> class.
     ****************************************************************************************/
    @isTest
    private static void locate<%=serviceClassName%>() {
        Test.startTest();
        <%=serviceClassName%> <%=serviceClassName%>Instance = <%=controllerClassName%>.locate<%=serviceClassName%>();
        Test.stopTest();

        System.assertEquals(
            <%=serviceClassName%>.getInstance(),
            <%=serviceClassName%>Instance,
            'Should return instance of <%=serviceClassName%> class.'
        );
    }

    /****************************************************************************************
     * @description Test method to verify get<%=vModelClassName%>()
     * returns an instance of <%=vModelClassName%> with valid values from valid stub.
     ****************************************************************************************/
    @isTest
    private static void get<%=vModelClassName%>Valid() {
        <%=vMapperClassName%>.instance = new STUB_<%=vMapperClassName%>Valid();

        Test.startTest();
        <%=vModelClassName%> <%=vModelClassName%>Instance = <%=controllerClassName%>.get<%=vModelClassName%>();
        Test.stopTest();

        //TODO: Add <%=vModelClassName%>Instance public fields values validation, for example
        /*
        System.assertEquals(
            expectedPropertyValue,
            <%=vModelClassName%>Instance.propertyName,
            'propertyName should return expectedPropertyValue'
        );
        */
    }

    /****************************************************************************************
     * @description Test method to verify get<%=vModelClassName%>()
     * throws an exception when exception occurs.
     ****************************************************************************************/
    @isTest
    private static void get<%=vModelClassName%>Exception() {
        <%=vMapperClassName%>.instance = new STUB_<%=vMapperClassName%>Exception();

        try {
            Test.startTest();
            <%=vModelClassName%> <%=vModelClassName%>Instance = <%=controllerClassName%>.get<%=vModelClassName%>();
            Test.stopTest();
            System.assert(false, 'should always throw an exception');
        } catch (AuraHandledException e) {
            System.assertEquals('Script-thrown exception', e.getMessage(), 'Should throw exception.');
        }
    }

    /***********************************************************************************************************************************
     ****************************************************** STUBS ***********************************************************************
     ***********************************************************************************************************************************/

    /**************************************************************************************************************************************
     * @description Stub class to simulate valid responses from <%=vMapperClassName%>
     **************************************************************************************************************************************/
    private class STUB_<%=vMapperClassName%>Valid extends <%=vMapperClassName%> {

        public override <%=vModelClassName%> get<%=vModelClassName%>() {
            //TODO: implement code to return a new instance of <%=vModelClassName%> with populated test values
            return new <%=vModelClassName%>(/* TODO: Specify expected test values here */);
        }

    }

    /**************************************************************************************************************************************
     * @description Stub class to simulate exception responses from <%=vMapperClassName%>
     **************************************************************************************************************************************/
    private class STUB_<%=vMapperClassName%>Exception extends <%=vMapperClassName%> {

        public override <%=vModelClassName%> get<%=vModelClassName%>() {
            throw new TestException('Exception encountered!');
        }

    }

    private class TestException extends Exception {
    }
}
