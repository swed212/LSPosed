-keepclasseswithmembers,includedescriptorclasses class * {
    native <methods>;
}
-keepclasseswithmembers class org.lsposed.lspd.Main {
    public static void main(java.lang.String[]);
}
-keepclasseswithmembers class org.lsposed.lspd.service.Dex2OatService {
    private java.lang.String devTmpDir;
    private java.lang.String magiskPath;
    private java.lang.String fakeBin32;
    private java.lang.String fakeBin64;
    private java.lang.String[] dex2oatBinaries;
}
-keepclasseswithmembers class org.lsposed.lspd.service.LogcatService {
    private int refreshFd(boolean);
}

-keep class org.lsposed.lspd.service.LSPManagerService {*;}
-keep class org.lsposed.lspd.service.ServiceManager {*;}
-keep class org.lsposed.lspd.ILSPManagerService {*;}
-keep class org.lsposed.lspd.models.Application {*;}

-keepclassmembers class ** implements android.content.ContextWrapper {
    public int getUserId();
    public android.os.UserHandle getUser();
}
-assumenosideeffects class android.util.Log {
    public static *** v(...);
    public static *** d(...);
}

-repackageclasses
-allowaccessmodification
