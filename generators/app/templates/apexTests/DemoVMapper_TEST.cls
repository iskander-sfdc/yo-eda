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
 * @description Test class for <%=vMapperClassName%>
 */
@isTest
public with sharing class <%=vMapperClassName%>_TEST {
    /**************************************************************************************************
     * @description Test method to verify that the getInstance method returns a new instance of the
     * <%=vMapperClassName%> class when one does not already exist.
     **************************************************************************************************/
    @isTest
    private static void getInstanceNew() {
        Test.startTest();
        <%=vMapperClassName%> <%=_.camelCase(vMapperClassName)%>Instance = <%=vMapperClassName%>.getInstance();
        Test.stopTest();

        System.assertEquals(
            <%=vMapperClassName%>.instance,
            <%=_.camelCase(vMapperClassName)%>Instance,
            'Instance of mapper class returned should match static instance variable.'
        );
        System.assertEquals(
            true,
            <%=_.camelCase(vMapperClassName)%>Instance != null,
            'Instance of mapper class should not be null.'
        );
    }

    /**************************************************************************************************
     * @description Test method to verify that the getInstance method returns the existing instance of the
     * <%=vMapperClassName%> class when one already exists.
     **************************************************************************************************/
    @isTest
    private static void getInstanceExisting() {
        Test.startTest();
        <%=vMapperClassName%> <%=_.camelCase(vMapperClassName)%>Instance1 = <%=vMapperClassName%>.getInstance();
        <%=vMapperClassName%> <%=_.camelCase(vMapperClassName)%>Instance2 = <%=vMapperClassName%>.getInstance();
        Test.stopTest();

        System.assertEquals(
            <%=vMapperClassName%>.instance,
            <%=_.camelCase(vMapperClassName)%>Instance1,
            'Instance of mapper class returned should match static instance variable.'
        );
        System.assertEquals(
            <%=_.camelCase(vMapperClassName)%>Instance1,
            <%=_.camelCase(vMapperClassName)%>Instance2,
            'Subsequent retrievals of mapper class instance should return existing instance.'
        );
        System.assertEquals(
            true,
            <%=_.camelCase(vMapperClassName)%>Instance1 != null,
            'Instance of mapper class should not be null.'
        );
    }

    /****************************************************************************************
     * @description Test method to verify locate<%=serviceClassName%>() returns an instance of
     * the <%=serviceClassName%> class.
     ****************************************************************************************/
    @isTest
    private static void locate<%=serviceClassName%>Valid() {
        <%=vMapperClassName%> <%=_.camelCase(vMapperClassName)%>Instance = <%=vMapperClassName%>.getInstance();

        Test.startTest();
        <%=serviceClassName%> <%=_.camelCase(serviceClassName)%>Instance = <%=_.camelCase(vMapperClassName)%>Instance.locate<%=serviceClassName%>();
        Test.stopTest();

        System.assertEquals(
            <%=serviceClassName%>.getInstance(),
            <%=_.camelCase(serviceClassName)%>Instance,
            'Should return instance of <%=serviceClassName%> class.'
        );
    }

    /************************************************************************************************************************************
     * @description Test method to verify get<%=vModelClassName%> returns a <%=vModelClassName%>
     ************************************************************************************************************************************/
    @isTest
    private static void get<%=vModelClassName%>Valid() {
        <%=serviceClassName%>.instance = new STUB_<%=serviceClassName%>();

        <%=vMapperClassName%> <%=_.camelCase(vMapperClassName)%>Instance = <%=vMapperClassName%>.getInstance();

        Test.startTest();
        <%=vModelClassName%> <%=_.camelCase(vModelClassName)%>Instance = <%=_.camelCase(vMapperClassName)%>Instance.get<%=vModelClassName%>();
        Test.stopTest();

        //TODO: Write assertions for VModel field values, such as:
        /*
        System.assertEquals(
            expectedFieldValue,
            <%=_.camelCase(vModelClassName)%>Instance.fieldName,
            'fieldName value should return expectedFieldValue'
        );
        */
    }

    /***********************************************************************************************************************************
     ****************************************************** STUBS ***********************************************************************
     ***********************************************************************************************************************************/

    /**************************************************************************************************************************************
     * @description Stub class to simulate the response from <%=serviceClassName%> to return a valid respose
     **************************************************************************************************************************************/
    private class STUB_<%=serviceClassName%> extends <%=serviceClassName%> {
        public override <%=modelClassName%> get<%=modelClassName%>() {
            return new <%=modelClassName%>(/* Specify initial field values for the model here */);
        }
    }
}
