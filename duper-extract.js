Java.perform(() => {
    var WhatsAppLibLoader = "com.whatsapp.nativelibloader.WhatsAppLibLoader"
    var Arrays = Java.use("java.util.Arrays");

    var wall_instances = [];
    Java.choose(WhatsAppLibLoader, {
        onMatch:function(instance){
            wall_instances.push(instance);
        },
        onComplete:function() {
            if(wall_instances.length>0){
                console.log("[*] Found instance of class, proceeding!")
                console.log("[*] Architecture: \t"+wall_instances[0]._A00.value);
                console.log("[*] Version string: \t"+wall_instances[0]._A01.value);
                var currentApplication = Java.use('android.app.ActivityThread').currentApplication();
                var context = currentApplication.getApplicationContext();
                var javaStringArray = Java.array('java.lang.String', ["vlc", "whatsapp", "curve25519"]);
                wall_instances[0].A02(context, Arrays.asList(javaStringArray));
            }else{
                console.log("[!] Unable to find instance of class.")
            }
        }
    });
});

Java.perform(() => {
    var soloader = "com.whatsapp.AbstractAppShellDelegate"
    var jnib = "com.whatsapp.wamsys.JniBridge";
    
    Java.choose(jnib, {
        onMatch:function(instance){
            console.log("[!] Gotcha1")
            console.log(instance.DEPENDENCIES.value);
            instance.DEPENDENCIES.value = null;
            console.log(instance.DEPENDENCIES.value);
        },
        onComplete:function() {
        }
    });

    var randolib = "X.2JS"

    Java.choose(randolib, {
        onMatch:function(instance){
            console.log("[!] Gotcha2")
            console.log("[!] A0Q" + instance.A0Q.value);
            console.log("[!] A04" + instance.A0Q.value._A04.value);
            console.log("[!] A00" + instance.A0Q.value._A04.value.A00);
            console.log("[!] A00" + instance.A0Q.value._A04.value.A00.value);
            instance.A0Q.value._A04.value.A00.value = null;
            console.log("[!] A00" + instance.A0Q.value._A04.value.A00.value);
        },
        onComplete:function() {
        }
    });

    Java.choose(soloader, {
        onMatch:function(instance){
            console.log("[!] Gotcha3")
            instance.onCreate()
        },
        onComplete:function() {
        }
    });
});
    
    /*
    console.log(JSON.stringify(groups, null, 2));
    var sp_instances = [];    
    Java.choose(SuperPackClass, {
        onMatch:function(instance){
            sp_instances.push(instance);
        },
        onComplete:function() {
            if(sp_instances.length>0){
                console.log("[*] Found instance of class, proceeding!")
                console.log("[*] Architecture: \t"+sp_instances[0]._A00.value);
                console.log("[*] Version string: \t"+sp_instances[0]._A01.value);
            }else{
                console.log("[!] Unable to find instance of class.")
            }
        }
    });
    
    var as_instances = [];
    Java.choose(AbstractAppShellDelegateClass, {
        onMatch:function(instance){
            as_instances.push(instance);
        },
        onComplete:function() {
            if(as_instances.length>0){
                console.log("[*] Found instance of class, proceeding!"+as_instances)
                as_instances[0].onCreate();
            }else{
                console.log("[!] Unable to find instance of class.")
            }
        }
    });
    
});*/