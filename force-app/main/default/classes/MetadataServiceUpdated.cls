public with sharing class MetadataServiceUpdated {
    
	  public static String SOAP_M_URI = 'http://soap.sforce.com/2006/04/metadata';

    public class SaveResult {
        public MetadataService.Error[] errors;
        public String fullName;
        public Boolean success;
        private String[] errors_type_info = new String[]{'errors',SOAP_M_URI,null,'0','-1','false'};
        private String[] fullName_type_info = new String[]{'fullName',SOAP_M_URI,null,'1','1','false'};
        private String[] success_type_info = new String[]{'success',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'errors','fullName','success'};
    }

    public class SessionHeader_element {
        public String sessionId;
        private String[] sessionId_type_info = new String[]{'sessionId',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'sessionId'};
    }

    public class DeleteResult {
        public MetadataService.Error[] errors;
        public String fullName;
        public Boolean success;
        private String[] errors_type_info = new String[]{'errors',SOAP_M_URI,null,'0','-1','false'};
        private String[] fullName_type_info = new String[]{'fullName',SOAP_M_URI,null,'1','1','false'};
        private String[] success_type_info = new String[]{'success',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'errors','fullName','success'};
    }

    public class DescribeMetadataResult {
        public MetadataService.DescribeMetadataObject[] metadataObjects;
        public String organizationNamespace;
        public Boolean partialSaveAllowed;
        public Boolean testRequired;
        private String[] metadataObjects_type_info = new String[]{'metadataObjects',SOAP_M_URI,null,'0','-1','false'};
        private String[] organizationNamespace_type_info = new String[]{'organizationNamespace',SOAP_M_URI,null,'1','1','false'};
        private String[] partialSaveAllowed_type_info = new String[]{'partialSaveAllowed',SOAP_M_URI,null,'1','1','false'};
        private String[] testRequired_type_info = new String[]{'testRequired',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'metadataObjects','organizationNamespace','partialSaveAllowed','testRequired'};
    }

    public class DeployResult {
        public String canceledBy;
        public String canceledByName;
        public Boolean checkOnly;
        public DateTime completedDate;
        public String createdBy;
        public String createdByName;
        public DateTime createdDate;
        public MetadataService.DeployDetails details;
        public Boolean done;
        public String errorMessage;
        public String errorStatusCode;
        public String id;
        public Boolean ignoreWarnings;
        public DateTime lastModifiedDate;
        public Integer numberComponentErrors;
        public Integer numberComponentsDeployed;
        public Integer numberComponentsTotal;
        public Integer numberTestErrors;
        public Integer numberTestsCompleted;
        public Integer numberTestsTotal;
        public Boolean rollbackOnError;
        public Boolean runTestsEnabled;
        public DateTime startDate;
        public String stateDetail;
        public String status;
        public Boolean success;
        private String[] canceledBy_type_info = new String[]{'canceledBy',SOAP_M_URI,null,'0','1','false'};
        private String[] canceledByName_type_info = new String[]{'canceledByName',SOAP_M_URI,null,'0','1','false'};
        private String[] checkOnly_type_info = new String[]{'checkOnly',SOAP_M_URI,null,'1','1','false'};
        private String[] completedDate_type_info = new String[]{'completedDate',SOAP_M_URI,null,'0','1','false'};
        private String[] createdBy_type_info = new String[]{'createdBy',SOAP_M_URI,null,'1','1','false'};
        private String[] createdByName_type_info = new String[]{'createdByName',SOAP_M_URI,null,'1','1','false'};
        private String[] createdDate_type_info = new String[]{'createdDate',SOAP_M_URI,null,'1','1','false'};
        private String[] details_type_info = new String[]{'details',SOAP_M_URI,null,'1','1','false'};
        private String[] done_type_info = new String[]{'done',SOAP_M_URI,null,'1','1','false'};
        private String[] errorMessage_type_info = new String[]{'errorMessage',SOAP_M_URI,null,'0','1','false'};
        private String[] errorStatusCode_type_info = new String[]{'errorStatusCode',SOAP_M_URI,null,'0','1','false'};
        private String[] id_type_info = new String[]{'id',SOAP_M_URI,null,'1','1','false'};
        private String[] ignoreWarnings_type_info = new String[]{'ignoreWarnings',SOAP_M_URI,null,'1','1','false'};
        private String[] lastModifiedDate_type_info = new String[]{'lastModifiedDate',SOAP_M_URI,null,'0','1','false'};
        private String[] numberComponentErrors_type_info = new String[]{'numberComponentErrors',SOAP_M_URI,null,'1','1','false'};
        private String[] numberComponentsDeployed_type_info = new String[]{'numberComponentsDeployed',SOAP_M_URI,null,'1','1','false'};
        private String[] numberComponentsTotal_type_info = new String[]{'numberComponentsTotal',SOAP_M_URI,null,'1','1','false'};
        private String[] numberTestErrors_type_info = new String[]{'numberTestErrors',SOAP_M_URI,null,'1','1','false'};
        private String[] numberTestsCompleted_type_info = new String[]{'numberTestsCompleted',SOAP_M_URI,null,'1','1','false'};
        private String[] numberTestsTotal_type_info = new String[]{'numberTestsTotal',SOAP_M_URI,null,'1','1','false'};
        private String[] rollbackOnError_type_info = new String[]{'rollbackOnError',SOAP_M_URI,null,'1','1','false'};
        private String[] runTestsEnabled_type_info = new String[]{'runTestsEnabled',SOAP_M_URI,null,'1','1','false'};
        private String[] startDate_type_info = new String[]{'startDate',SOAP_M_URI,null,'0','1','false'};
        private String[] stateDetail_type_info = new String[]{'stateDetail',SOAP_M_URI,null,'0','1','false'};
        private String[] status_type_info = new String[]{'status',SOAP_M_URI,null,'1','1','false'};
        private String[] success_type_info = new String[]{'success',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'canceledBy','canceledByName','checkOnly','completedDate','createdBy','createdByName','createdDate','details','done','errorMessage','errorStatusCode','id','ignoreWarnings','lastModifiedDate','numberComponentErrors','numberComponentsDeployed','numberComponentsTotal','numberTestErrors','numberTestsCompleted','numberTestsTotal','rollbackOnError','runTestsEnabled','startDate','stateDetail','status','success'};
    }

    public class RetrieveResult {
        public Boolean done;
        public String errorMessage;
        public String errorStatusCode;
        public MetadataService.FileProperties[] fileProperties;
        public String id;
        public MetadataService.RetrieveMessage[] messages;
        public String status;
        public Boolean success;
        public String zipFile;
        private String[] done_type_info = new String[]{'done',SOAP_M_URI,null,'1','1','false'};
        private String[] errorMessage_type_info = new String[]{'errorMessage',SOAP_M_URI,null,'0','1','false'};
        private String[] errorStatusCode_type_info = new String[]{'errorStatusCode',SOAP_M_URI,null,'0','1','false'};
        private String[] fileProperties_type_info = new String[]{'fileProperties',SOAP_M_URI,null,'0','-1','false'};
        private String[] id_type_info = new String[]{'id',SOAP_M_URI,null,'1','1','false'};
        private String[] messages_type_info = new String[]{'messages',SOAP_M_URI,null,'0','-1','false'};
        private String[] status_type_info = new String[]{'status',SOAP_M_URI,null,'1','1','false'};
        private String[] success_type_info = new String[]{'success',SOAP_M_URI,null,'1','1','false'};
        private String[] zipFile_type_info = new String[]{'zipFile',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'done','errorMessage','errorStatusCode','fileProperties','id','messages','status','success','zipFile'};
    }

    public class AsyncResult {
        public Boolean done;
        public String id;
        public String message;
        public String state;
        public String statusCode;
        private String[] done_type_info = new String[]{'done',SOAP_M_URI,null,'1','1','false'};
        private String[] id_type_info = new String[]{'id',SOAP_M_URI,null,'1','1','false'};
        private String[] message_type_info = new String[]{'message',SOAP_M_URI,null,'0','1','false'};
        private String[] state_type_info = new String[]{'state',SOAP_M_URI,null,'1','1','false'};
        private String[] statusCode_type_info = new String[]{'statusCode',SOAP_M_URI,null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'done','id','message','state','statusCode'};
    }

    public class CancelDeployResult {
        public Boolean done;
        public String id;
        private String[] done_type_info = new String[]{'done',SOAP_M_URI,null,'1','1','false'};
        private String[] id_type_info = new String[]{'id',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'done','id'};
    }

    public class DescribeValueTypeResult {
        public Boolean apiCreatable;
        public Boolean apiDeletable;
        public Boolean apiReadable;
        public Boolean apiUpdatable;
        public MetadataService.ValueTypeField parentField;
        public MetadataService.ValueTypeField[] valueTypeFields;
        private String[] apiCreatable_type_info = new String[]{'apiCreatable',SOAP_M_URI,null,'1','1','false'};
        private String[] apiDeletable_type_info = new String[]{'apiDeletable',SOAP_M_URI,null,'1','1','false'};
        private String[] apiReadable_type_info = new String[]{'apiReadable',SOAP_M_URI,null,'1','1','false'};
        private String[] apiUpdatable_type_info = new String[]{'apiUpdatable',SOAP_M_URI,null,'1','1','false'};
        private String[] parentField_type_info = new String[]{'parentField',SOAP_M_URI,null,'0','1','false'};
        private String[] valueTypeFields_type_info = new String[]{'valueTypeFields',SOAP_M_URI,null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'apiCreatable','apiDeletable','apiReadable','apiUpdatable','parentField','valueTypeFields'};
    }

    public interface IReadResult {
        MetadataService.Metadata[] getRecords();
    }

    public class UpsertResult {
        public Boolean created;
        public MetadataService.Error[] errors;
        public String fullName;
        public Boolean success;
        private String[] created_type_info = new String[]{'created',SOAP_M_URI,null,'1','1','false'};
        private String[] errors_type_info = new String[]{'errors',SOAP_M_URI,null,'0','-1','false'};
        private String[] fullName_type_info = new String[]{'fullName',SOAP_M_URI,null,'1','1','false'};
        private String[] success_type_info = new String[]{'success',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'created','errors','fullName','success'};
    }

    public class FileProperties {
        public String createdById;
        public String createdByName;
        public DateTime createdDate;
        public String fileName;
        public String fullName;
        public String id;
        public String lastModifiedById;
        public String lastModifiedByName;
        public DateTime lastModifiedDate;
        public String manageableState;
        public String namespacePrefix;
        public String type_x;
        private String[] createdById_type_info = new String[]{'createdById',SOAP_M_URI,null,'1','1','false'};
        private String[] createdByName_type_info = new String[]{'createdByName',SOAP_M_URI,null,'1','1','false'};
        private String[] createdDate_type_info = new String[]{'createdDate',SOAP_M_URI,null,'1','1','false'};
        private String[] fileName_type_info = new String[]{'fileName',SOAP_M_URI,null,'1','1','false'};
        private String[] fullName_type_info = new String[]{'fullName',SOAP_M_URI,null,'1','1','false'};
        private String[] id_type_info = new String[]{'id',SOAP_M_URI,null,'1','1','false'};
        private String[] lastModifiedById_type_info = new String[]{'lastModifiedById',SOAP_M_URI,null,'1','1','false'};
        private String[] lastModifiedByName_type_info = new String[]{'lastModifiedByName',SOAP_M_URI,null,'1','1','false'};
        private String[] lastModifiedDate_type_info = new String[]{'lastModifiedDate',SOAP_M_URI,null,'1','1','false'};
        private String[] manageableState_type_info = new String[]{'manageableState',SOAP_M_URI,null,'0','1','false'};
        private String[] namespacePrefix_type_info = new String[]{'namespacePrefix',SOAP_M_URI,null,'0','1','false'};
        private String[] type_x_type_info = new String[]{'type',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'createdById','createdByName','createdDate','fileName','fullName','id','lastModifiedById','lastModifiedByName','lastModifiedDate','manageableState','namespacePrefix','type_x'};
    }

    public class MetadataPort {
        public String endpoint_x = URL.getOrgDomainUrl().toExternalForm() + '/services/Soap/m/42.0';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        public MetadataService.SessionHeader_element SessionHeader;
        public MetadataService.DebuggingInfo_element DebuggingInfo;
        public MetadataService.DebuggingHeader_element DebuggingHeader;
        public MetadataService.CallOptions_element CallOptions;
        public MetadataService.AllOrNoneHeader_element AllOrNoneHeader;
        private String SessionHeader_hns = 'SessionHeader=http://soap.sforce.com/2006/04/metadata';
        private String DebuggingInfo_hns = 'DebuggingInfo=http://soap.sforce.com/2006/04/metadata';
        private String DebuggingHeader_hns = 'DebuggingHeader=http://soap.sforce.com/2006/04/metadata';
        private String CallOptions_hns = 'CallOptions=http://soap.sforce.com/2006/04/metadata';
        private String AllOrNoneHeader_hns = 'AllOrNoneHeader=http://soap.sforce.com/2006/04/metadata';
        private String[] ns_map_type_info = new String[]{SOAP_M_URI, 'MetadataService'};
        public MetadataService.DeleteResult[] deleteMetadata(String type_x,String[] fullNames) {
            MetadataService.deleteMetadata_element request_x = new MetadataService.deleteMetadata_element();
            request_x.type_x = type_x;
            request_x.fullNames = fullNames;
            MetadataService.deleteMetadataResponse_element response_x;
            Map<String, MetadataService.deleteMetadataResponse_element> response_map_x = new Map<String, MetadataService.deleteMetadataResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              SOAP_M_URI,
              'deleteMetadata',
              SOAP_M_URI,
              'deleteMetadataResponse',
              'MetadataService.deleteMetadataResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
        public MetadataService.SaveResult renameMetadata(String type_x,String oldFullName,String newFullName) {
            MetadataService.renameMetadata_element request_x = new MetadataService.renameMetadata_element();
            request_x.type_x = type_x;
            request_x.oldFullName = oldFullName;
            request_x.newFullName = newFullName;
            MetadataService.renameMetadataResponse_element response_x;
            Map<String, MetadataService.renameMetadataResponse_element> response_map_x = new Map<String, MetadataService.renameMetadataResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              SOAP_M_URI,
              'renameMetadata',
              SOAP_M_URI,
              'renameMetadataResponse',
              'MetadataService.renameMetadataResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
        public MetadataService.SaveResult[] updateMetadata(MetadataService.Metadata[] metadata) {
            MetadataService.updateMetadata_element request_x = new MetadataService.updateMetadata_element();
            request_x.metadata = metadata;
            MetadataService.updateMetadataResponse_element response_x;
            Map<String, MetadataService.updateMetadataResponse_element> response_map_x = new Map<String, MetadataService.updateMetadataResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              SOAP_M_URI,
              'updateMetadata',
              SOAP_M_URI,
              'updateMetadataResponse',
              'MetadataService.updateMetadataResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
        public MetadataService.DescribeMetadataResult describeMetadata(Double asOfVersion) {
            MetadataService.describeMetadata_element request_x = new MetadataService.describeMetadata_element();
            request_x.asOfVersion = asOfVersion;
            MetadataService.describeMetadataResponse_element response_x;
            Map<String, MetadataService.describeMetadataResponse_element> response_map_x = new Map<String, MetadataService.describeMetadataResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              SOAP_M_URI,
              'describeMetadata',
              SOAP_M_URI,
              'describeMetadataResponse',
              'MetadataService.describeMetadataResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
        public MetadataService.DeployResult checkDeployStatus(String asyncProcessId,Boolean includeDetails) {
            MetadataService.checkDeployStatus_element request_x = new MetadataService.checkDeployStatus_element();
            request_x.asyncProcessId = asyncProcessId;
            request_x.includeDetails = includeDetails;
            MetadataService.checkDeployStatusResponse_element response_x;
            Map<String, MetadataService.checkDeployStatusResponse_element> response_map_x = new Map<String, MetadataService.checkDeployStatusResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              SOAP_M_URI,
              'checkDeployStatus',
              SOAP_M_URI,
              'checkDeployStatusResponse',
              'MetadataService.checkDeployStatusResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
        public MetadataService.RetrieveResult checkRetrieveStatus(String asyncProcessId,Boolean includeZip) {
            MetadataService.checkRetrieveStatus_element request_x = new MetadataService.checkRetrieveStatus_element();
            request_x.asyncProcessId = asyncProcessId;
            request_x.includeZip = includeZip;
            MetadataService.checkRetrieveStatusResponse_element response_x;
            Map<String, MetadataService.checkRetrieveStatusResponse_element> response_map_x = new Map<String, MetadataService.checkRetrieveStatusResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              SOAP_M_URI,
              'checkRetrieveStatus',
              SOAP_M_URI,
              'checkRetrieveStatusResponse',
              'MetadataService.checkRetrieveStatusResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
        public MetadataService.AsyncResult retrieve(MetadataService.RetrieveRequest retrieveRequest) {
            MetadataService.retrieve_element request_x = new MetadataService.retrieve_element();
            request_x.retrieveRequest = retrieveRequest;
            MetadataService.retrieveResponse_element response_x;
            Map<String, MetadataService.retrieveResponse_element> response_map_x = new Map<String, MetadataService.retrieveResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              SOAP_M_URI,
              'retrieve',
              SOAP_M_URI,
              'retrieveResponse',
              'MetadataService.retrieveResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
        public MetadataService.CancelDeployResult cancelDeploy(String String_x) {
            MetadataService.cancelDeploy_element request_x = new MetadataService.cancelDeploy_element();
            request_x.String_x = String_x;
            MetadataService.cancelDeployResponse_element response_x;
            Map<String, MetadataService.cancelDeployResponse_element> response_map_x = new Map<String, MetadataService.cancelDeployResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              SOAP_M_URI,
              'cancelDeploy',
              SOAP_M_URI,
              'cancelDeployResponse',
              'MetadataService.cancelDeployResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
        public String deployRecentValidation(String validationId) {
            MetadataService.deployRecentValidation_element request_x = new MetadataService.deployRecentValidation_element();
            request_x.validationId = validationId;
            MetadataService.deployRecentValidationResponse_element response_x;
            Map<String, MetadataService.deployRecentValidationResponse_element> response_map_x = new Map<String, MetadataService.deployRecentValidationResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              SOAP_M_URI,
              'deployRecentValidation',
              SOAP_M_URI,
              'deployRecentValidationResponse',
              'MetadataService.deployRecentValidationResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
        public MetadataService.DescribeValueTypeResult describeValueType(String type_x) {
            MetadataService.describeValueType_element request_x = new MetadataService.describeValueType_element();
            request_x.type_x = type_x;
            MetadataService.describeValueTypeResponse_element response_x;
            Map<String, MetadataService.describeValueTypeResponse_element> response_map_x = new Map<String, MetadataService.describeValueTypeResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              SOAP_M_URI,
              'describeValueType',
              SOAP_M_URI,
              'describeValueTypeResponse',
              'MetadataService.describeValueTypeResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
        public MetadataService.SaveResult[] createMetadata(MetadataService.Metadata[] metadata) {
            MetadataService.createMetadata_element request_x = new MetadataService.createMetadata_element();
            request_x.metadata = metadata;
            MetadataService.createMetadataResponse_element response_x;
            Map<String, MetadataService.createMetadataResponse_element> response_map_x = new Map<String, MetadataService.createMetadataResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              SOAP_M_URI,
              'createMetadata',
              SOAP_M_URI,
              'createMetadataResponse',
              'MetadataService.createMetadataResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
        public MetadataService.AsyncResult deploy(String ZipFile,MetadataService.DeployOptions DeployOptions) {
            MetadataService.deploy_element request_x = new MetadataService.deploy_element();
            request_x.ZipFile = ZipFile;
            request_x.DeployOptions = DeployOptions;
            MetadataService.deployResponse_element response_x;
            Map<String, MetadataService.deployResponse_element> response_map_x = new Map<String, MetadataService.deployResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              SOAP_M_URI,
              'deploy',
              SOAP_M_URI,
              'deployResponse',
              'MetadataService.deployResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
        public MetadataService.IReadResult readMetadata(String type_x,String[] fullNames) {
            MetadataService.readMetadata_element request_x = new MetadataService.readMetadata_element();
            request_x.type_x = type_x;
            request_x.fullNames = fullNames;
            MetadataService.IReadResponseElement response_x;
            Map<String, MetadataService.IReadResponseElement> response_map_x = new Map<String, MetadataService.IReadResponseElement>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              SOAP_M_URI,
              'readMetadata',
              SOAP_M_URI,
              'readMetadataResponse',
              'MetadataService.read' + type_x + 'Response_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.getResult();
        }
        public MetadataService.UpsertResult[] upsertMetadata(MetadataService.Metadata[] metadata) {
            MetadataService.upsertMetadata_element request_x = new MetadataService.upsertMetadata_element();
            request_x.metadata = metadata;
            MetadataService.upsertMetadataResponse_element response_x;
            Map<String, MetadataService.upsertMetadataResponse_element> response_map_x = new Map<String, MetadataService.upsertMetadataResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              SOAP_M_URI,
              'upsertMetadata',
              SOAP_M_URI,
              'upsertMetadataResponse',
              'MetadataService.upsertMetadataResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
        public MetadataService.FileProperties[] listMetadata(MetadataService.ListMetadataQuery[] queries,Double asOfVersion) {
            MetadataService.listMetadata_element request_x = new MetadataService.listMetadata_element();
            request_x.queries = queries;
            request_x.asOfVersion = asOfVersion;
            MetadataService.listMetadataResponse_element response_x;
            Map<String, MetadataService.listMetadataResponse_element> response_map_x = new Map<String, MetadataService.listMetadataResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              SOAP_M_URI,
              'listMetadata',
              SOAP_M_URI,
              'listMetadataResponse',
              'MetadataService.listMetadataResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
    }
}