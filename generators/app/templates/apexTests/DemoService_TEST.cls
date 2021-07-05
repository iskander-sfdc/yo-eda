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
 * @description Test class for <%=serviceClassName%>
 */
@isTest
public with sharing class <%=serviceClassName%>_TEST {
    /**************************************************************************************************************************
     * @description Test method to verify that the getInstance method returns a new instance of the
     * <%=serviceClassName%> class when one does not already exist.
     ***************************************************************************************************************************/
    @isTest
    private static void getInstanceNew() {
        Test.startTest();
        <%=serviceClassName%> <%=serviceClassName%>Instance = <%=serviceClassName%>.getInstance();
        Test.stopTest();

        System.assertEquals(
            <%=serviceClassName%>.instance,
            <%=serviceClassName%>Instance,
            'Instance of service class returned should match static instance variable.'
        );
        System.assertEquals(
            true,
            <%=serviceClassName%>Instance != null,
            'Instance of service class should not be null.'
        );
    }

    /**************************************************************************************************************************
     * @description Test method to verify that the getInstance method returns the existing instance of the
     * <%=serviceClassName%> class when one already exists.
     ***************************************************************************************************************************/
    @isTest
    private static void getInstanceExisting() {
        Test.startTest();
        <%=serviceClassName%> <%=serviceClassName%>Instance1 = <%=serviceClassName%>.getInstance();
        <%=serviceClassName%> <%=serviceClassName%>Instance2 = <%=serviceClassName%>.getInstance();
        Test.stopTest();

        System.assertEquals(
            <%=serviceClassName%>.instance,
            <%=serviceClassName%>Instance1,
            'Instance of service class returned should match static instance variable.'
        );
        System.assertEquals(
            <%=serviceClassName%>Instance1,
            <%=serviceClassName%>Instance2,
            'Subsequent retrievals of service class instance should return existing instance.'
        );
        System.assertEquals(true, <%=serviceClassName%>Instance1 != null, 'Instance of service class should not be null.');
    }

    /**************************************************************************************************************************
     * @description Test method to verify that the locate<%=mapperClassName%> method returns an instance
     * of the <%=mapperClassName%> class.
     ***************************************************************************************************************************/
    @isTest
    private static void locate<%=mapperClassName%>Valid() {
        <%=serviceClassName%> <%=serviceClassName%>Instance = <%=serviceClassName%>.getInstance();

        Test.startTest();
        <%=mapperClassName%> <%=mapperClassName%>Instance = <%=serviceClassName%>Instance.locate<%=mapperClassName%>();
        Test.stopTest();

        System.assertEquals(
            <%=mapperClassName%>.getInstance(),
            <%=mapperClassName%>Instance,
            'Should return instance of <%=mapperClassName%> class.'
        );
    }

    /**************************************************************************************************************************
     * @description Test method to verify that the get<%=modelClassName%> method returns a <%=modelClassName%>
     ***************************************************************************************************************************/
    @isTest
    private static void get<%=modelClassName%>Valid() {
        <%=mapperClassName%>.instance = new STUB_<%=mapperClassName%>();

        <%=serviceClassName%> <%=serviceClassName%>Instance = <%=serviceClassName%>.getInstance();

        Test.startTest();
        <%=modelClassName%> <%=modelClassName%>Instance = <%=serviceClassName%>Instance.get<%=modelClassName%>();
        Test.stopTest();

        //TODO: Write assertions for Model field values, such as:
        /*
        System.assertEquals(
            expectedFieldValue,
            <%=modelClassName%>Instance.fieldName,
            'fieldName should return expectedFieldValue'
        );
        */
    }

    /***********************************************************************************************************************************
     ****************************************************** STUBS ***********************************************************************
     ***********************************************************************************************************************************/

    /**************************************************************************************************************************************
     * @description Stub class to simulate the response from <%=mapperClassName%> to return
     * a valid <%=modelClassName%>
     **************************************************************************************************************************************/
    private class STUB_<%=mapperClassName%> extends <%=mapperClassName%> {
        public override <%=modelClassName%> get<%=modelClassName%>() {
            return new <%=modelClassName%>(/* Specify initial model field values here */);
        }
    }
}
