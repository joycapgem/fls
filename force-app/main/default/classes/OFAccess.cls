// OFAccess -- Account Field Access
public class OFAccess {
    // give read access to all fields of an object.
    public static void giveReadAccessToAll(String profileName, boolean isCustom, String objectName){
        FLS.updateFieldLevelSecurityObj(profileName, isCustom, objectName, true, false);
    }

    // give edit access to all fields of an object.
    public static void giveEditAccessToAll(String profileName, boolean isCustom, String objectName){
        FLS.updateFieldLevelSecurityObj(profileName, isCustom, objectName, true, true);
    }
    
    // revoke read/edit access from all fields of an object.
    public static void revokeAccessFromAll(String profileName, boolean isCustom, String objectName){
        FLS.updateFieldLevelSecurityObj(profileName, isCustom, objectName, false, false);
    }
    
    // give read access to specified fields of an object.
    public static void giveReadAccessToSpecifiedFields(String profileName, boolean isCustom, String objectName, String fieldNames){
        FLS.updateFieldLevelSecurityFields(profileName, isCustom, objectName, fieldNames, true, false);
    }

    // give edit access to specified fields of an object.
    public static void giveEditAccessToSpecifiedFields(String profileName, boolean isCustom, String objectName, String fieldNames){
        FLS.updateFieldLevelSecurityFields(profileName, isCustom, objectName, fieldNames, true, true);
    }
    
    // revoke read/edit access from specified fields of an object.
    public static void revokeAccessFromSpecifiedFields(String profileName, boolean isCustom, String objectName, String fieldNames){
        FLS.updateFieldLevelSecurityFields(profileName, isCustom, objectName, fieldNames, false, false);
    }
}