-keepclassmembers class fqcn.of.javascript.interface.for.webview {
   public *;
}

-keep class com.theartofdev.edmodo.cropper.*
-dontwarn com.theartofdev.edmodo.cropper.R$id
-keep class com.theartofdev.** { *; }
-keep interface com.theartofdev.** { *; }
-keep interface com.theartofdev.** { *; }

-keep class android.support.v7.widget.SearchView { *; }
-keep class android.support.v7.widget.** { *; }
-keep class androidx.appcompat.widget.** { *; }
# keep the class and specified members from being removed or renamed
-keep class com.tilismtech.tellotalksdk.network.RestWebService { *; }

# keep the specified class members from being removed or renamed
# only if the class is preserved
-keepclassmembers class com.tilismtech.tellotalksdk.network.RestWebService { *; }

# keep the class and specified members from being renamed only
-keepnames class com.tilismtech.tellotalksdk.network.RestWebService { *; }

# keep the specified class members from being renamed only
-keepclassmembernames class com.tilismtech.tellotalksdk.network.RestWebService { *; }

# keep the class and specified members from being removed or renamed
-keep class com.tilismtech.tellotalksdk.ui.activities.ConversationActivity { *; }

# keep the specified class members from being removed or renamed
# only if the class is preserved
-keepclassmembers class com.tilismtech.tellotalksdk.ui.activities.ConversationActivity { *; }

# keep the class and specified members from being renamed only
-keepnames class com.tilismtech.tellotalksdk.ui.activities.ConversationActivity { *; }

# keep the specified class members from being renamed only
-keepclassmembernames class com.tilismtech.tellotalksdk.ui.activities.ConversationActivity { *; }

-keep class com.tilismtech.tellotalksdk.TelloApplication { *; }
-keep class com.tilismtech.tellotalksdk.entities.manager.AppDatabase { *; }
-keep class com.tilismtech.tellotalksdk.entities.** { *; }
-keep class com.tilismtech.tellotalksdk.listeners.** { *; }
-keep class com.tilismtech.tellotalksdk.utils.** { *; }
-keep class com.tilismtech.tellotalksdk.events.** { *; }
-keep class com.tilismtech.tellotalksdk.ui.bindingadapters.** { *; }
-keep class com.tilismtech.tellotalksdk.interfaces.** { *; }
-keep class com.tilismtech.tellotalksdk.ui.linkpreview.** { *; }
-keep class com.tilismtech.tellotalksdk.events.** { *; }
-keepnames class com.tilismtech.tellotalksdk.managers.TelloApiClient
-keepclassmembernames class com.tilismtech.tellotalksdk.managers.TelloApiClient {
    public <methods>;
    public <fields>;
}
-keepnames class com.tilismtech.tellotalksdk.managers.TelloApiClient$Builder
-keepclassmembernames class com.tilismtech.tellotalksdk.managers.TelloApiClient$Builder {
    public <methods>;
    public <fields>;
}

-keep public class **.BR { public *; }
-keep public class **.BR$* { public *; }
-keepclassmembers class **.BR$* {
    public static <fields>;
}
-keepclassmembers class **.R$* {
    public static <fields>;
}
-keep class android.databinding.** { *; }
-keep class * extends android.databinding.** { *; }
-keep class com.tilismtech.tellotalksdk.databinding.** { *; }

-dontwarn androidx.databinding.**
-keep class androidx.databinding.** { *; }
-keep class * extends androidx.databinding.DataBinderMapper

#fresco rules
-keep,allowobfuscation @interface com.facebook.common.internal.DoNotStrip
-keep,allowobfuscation @interface com.facebook.soloader.DoNotOptimize

# Do not strip any method/class that is annotated with @DoNotStrip
-keep @com.facebook.common.internal.DoNotStrip class *
-keepclassmembers class * {
    @com.facebook.common.internal.DoNotStrip *;
}

# Do not strip any method/class that is annotated with @DoNotOptimize
-keep @com.facebook.soloader.DoNotOptimize class *
-keepclassmembers class * {
    @com.facebook.soloader.DoNotOptimize *;
}

# Keep native methods
-keepclassmembers class * {
    native <methods>;
}

-dontwarn okio.**
-dontwarn com.squareup.okhttp.**
-dontwarn okhttp3.**
-dontwarn javax.annotation.**
-dontwarn com.android.volley.toolbox.**
-dontwarn com.facebook.infer.**

# Keep native methods
-keepclassmembers class * {
    native <methods>;
}

#Eventbuss proguard
-keepattributes *Annotation*
-keepclassmembers class * {
    @com.tilismtech.tellotalksdk.eventbus.Subscribe <methods>;
}
-keep enum com.tilismtech.tellotalksdk.eventbus.ThreadMode { *; }

# Only required if you use AsyncExecutor
-keepclassmembers class * extends com.tilismtech.tellotalksdk.eventbus.util.ThrowableFailureEvent {
    <init>(java.lang.Throwable);
}

# Gson specific classes
-dontwarn sun.misc.**
#-keep class com.google.gson.stream.** { *; }

# Application classes that will be serialized/deserialized over Gson
-keep class com.google.gson.examples.android.model.** { *; }

# Prevent proguard from stripping interface information from TypeAdapterFactory,
# JsonSerializer, JsonDeserializer instances (so they can be used in @JsonAdapter)
-keep class * implements com.google.gson.TypeAdapterFactory
#-keep class * implements com.google.gson.JsonSerializer
#-keep class * implements com.google.gson.JsonDeserializer
##---------------End: proguard configuration for Gson  ----------


# Zomato photofilters

-keep class com.zomato.photofilters.** {*;}
-keepclassmembers  class com.zomato.photofilters.** {*;}

#mp4Parser

-keep class * implements com.coremedia.iso.boxes.Box { *; }
-dontwarn com.coremedia.iso.boxes.**
-dontwarn com.googlecode.mp4parser.authoring.tracks.mjpeg.**
-dontwarn com.googlecode.mp4parser.authoring.tracks.ttml.**

# ez-vcard
-dontwarn com.fasterxml.jackson.**		# Jackson JSON Processor (for jCards) not used
-dontwarn freemarker.**				# freemarker templating library (for creating hCards) not used
-dontwarn org.jsoup.**				# jsoup library (for hCard parsing) not used
-dontwarn sun.misc.Perf
-keep class ezvcard.property.** { *; }		# keep all VCard properties (created at runtime)
-dontwarn ezvcard.io.json.JCardModule

-keep,includedescriptorclasses class ezvcard.io.json.JCardModule { *; }
-keepclassmembers class ezvcard.io.json.JCardModule { *; }
-keep,includedescriptorclasses enum ezvcard.io.json.JCardModule { *; }
-keepclassmembers enum ezvcard.io.json.JCardModule { *; }
-keep,includedescriptorclasses interface ezvcard.io.json.JCardModule { *; }
-keepclassmembers interface ezvcard.io.json.JCardModule { *; }

#jsoup
-keeppackagenames org.jsoup.nodes

# Retrofit
-dontwarn retrofit2.**
-dontwarn org.codehaus.mojo.**
-keep class retrofit2.** { *; }
-keepattributes *Annotation*

-keepattributes RuntimeVisibleAnnotations
-keepattributes RuntimeInvisibleAnnotations
-keepattributes RuntimeVisibleParameterAnnotations
-keepattributes RuntimeInvisibleParameterAnnotations

-keepattributes EnclosingMethod

-keepclasseswithmembers class * {
    @retrofit2.* <methods>;
}

-keepclasseswithmembers interface * {
    @retrofit2.* <methods>;
}

-keepclasseswithmembers class * {
    @retrofit2.http.* <methods>;
}

# Platform calls Class.forName on types which do not exist on Android to determine platform.
-dontnote retrofit2.Platform
# Platform used when running on RoboVM on iOS. Will not be used at runtime.
-dontnote retrofit2.Platform$IOS$MainThreadExecutor
# Platform used when running on Java 8 VMs. Will not be used at runtime.
-dontwarn retrofit2.Platform$Java8
# Retain generic type information for use by reflection by converters and adapters.
-keepattributes Signature
# Retain declared checked exceptions for use by a Proxy instance.
-keepattributes Exceptions

#easy permissions
-keepclassmembers class * {
    @pub.devrel.easypermissions.AfterPermissionGranted <methods>;
}

# keep everything in this package from being removed or renamed
-keep class com.facebook.** { *; }

# keep everything in this package from being renamed only
-keepnames class com.facebook.** { *; }

-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontoptimize
-dontshrink
-dontpreverify
-dontwarn
-ignorewarnings
-keepattributes SourceFile,LineNumberTable