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
 * @group-content ../../ApexDocContent/
 * @description Test class for <%=mapperClassName%>
 */
@isTest
public with sharing class <%=mapperClassName%>_TEST {
    /**************************************************************************************************************************
     * @description Test method to verify that the getInstance method returns a new instance of the
     * <%=mapperClassName%>Instance class when one does not already exist.
     ***************************************************************************************************************************/
    @isTest
    private static void getInstanceNew() {
        Test.startTest();
        <%=mapperClassName%> <%=mapperClassName%>Instance = <%=mapperClassName%>.getInstance();
        Test.stopTest();

        System.assertEquals(
            <%=mapperClassName%>.instance,
            <%=mapperClassName%>Instance,
            'Instance of mapper class returned should match static instance variable.'
        );
        System.assertEquals(
            true,
            <%=mapperClassName%>Instance != null,
            'Instance of mapper class should not be null.'
        );
    }

    /**************************************************************************************************************************
     * @description Test method to verify that the getInstance method returns the existing instance of the
     * <%=mapperClassName%>Instance class when one already exists.
     ***************************************************************************************************************************/
    @isTest
    private static void getInstanceExisting() {
        Test.startTest();
        <%=mapperClassName%> <%=mapperClassName%>Instance1 = <%=mapperClassName%>.getInstance();
        <%=mapperClassName%> <%=mapperClassName%>Instance2 = <%=mapperClassName%>.getInstance();
        Test.stopTest();

        System.assertEquals(
            <%=mapperClassName%>.instance,
            <%=mapperClassName%>Instance1,
            'Instance of mapper class returned should match static instance variable.'
        );
        System.assertEquals(
            <%=mapperClassName%>Instance1,
            <%=mapperClassName%>Instance2,
            'Subsequent retrievals of mapper class instance should return existing instance.'
        );
        System.assertEquals(
            true,
            <%=mapperClassName%>Instance1 != null,
            'Instance of mapper class should not be null.'
        );
    }

    /**************************************************************************************************************************
     * @description Test method to verify that the get<%=modelClassName%> method returns a
     * <%=modelClassName%> matching the <%=modelName%> 
     * settings.
     ***************************************************************************************************************************/
    @isTest
    private static void get<%=modelClassName%>Valid() {
        //TODO: Write code to create and retrieve test db record, for example:
        /*
        Hierarchy_Settings__c hierarchySettings = UTIL_CustomSettings_API.getSettingsForTests(
            new Hierarchy_Settings__c(Validate_Program_Plan_for_Nested_PR__c = true)
        );
        */

        <%=mapperClassName%> <%=mapperClassName%>Instance = <%=mapperClassName%>.getInstance();

        Test.startTest();
        <%=modelClassName%> <%=modelClassName%>Instance = <%=mapperClassName%>Instance.get<%=modelClassName%>();
        Test.stopTest();

        //TODO: Write assertions to test the model against the test record, for example:
        /*
        System.assertEquals(
            hierarchySettings.Validate_Program_Plan_for_Nested_PR__c,
            <%=modelClassName%>Instance.validateProgramPlanForNestedPR,
            'validateProgramPlanForNestedPR should be enabled.'
        );
        */
    }
}
