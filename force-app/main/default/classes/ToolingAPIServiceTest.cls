@isTest
public class ToolingAPIServiceTest {
    @isTest
    static void ToolingAPIServiceTest(){
        Test.setMock(HttpCalloutMock.class, new ToolingAPIServiceMock('[{}]'));
         Test.startTest();
        ToolingAPIService service=new ToolingAPIService();
        service.queryMetadata(ToolingAPIService.getENUMforString.get('ApexClass'));
        service.queryMetadata(ToolingAPIService.getENUMforString.get('ApexPage'));
        service.queryAuraBundle('queryAuraBundle');
        service.queryWebBundle('queryWebBundle');
        service.updateAuraDefinition('queryAuraBundle','id');
        service.updateWebDefinition('queryWebBundle','id');
        ViewComponents.allMetadaType();
        ViewComponents.getWebComponentList();
        ViewComponents.getMetadataValueList('id');
        ViewComponents.getAuraComponent('id'); 
        ViewComponents.getWebComponent('id'); 
        ViewComponents.setAuraComponent('id','s');
        ViewComponents.setWebComponent('id','s');
        
        Test.stopTest();
    }
      @isTest
    static void ToolingAPIServiceCreateTest(){
        Test.setMock(HttpCalloutMock.class, new ToolingAPIServiceMock('{"id":"345678ijnbvcd"}'));
         Test.startTest();
        ToolingAPIService service=new ToolingAPIService();
       
        ViewComponents.createWebComponent('fileName',true,true,true);
        Test.stopTest();
    }
	public class ToolingAPIServiceMock implements HttpCalloutMock {
        private String testResponse;
        public ToolingAPIServiceMock(String testResponse){
            this.testResponse = testResponse;
        }

        public HTTPResponse respond(HTTPRequest req) {
            HttpResponse res = new HttpResponse();
            res.setBody(testResponse);
            res.setStatusCode(201);
            return res;
        }
    }
}