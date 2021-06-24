package com.android.sdk_example;

import android.app.Application;
import android.content.Context;


import androidx.multidex.MultiDex;

import com.tilismtech.tellotalksdk.TelloApplication;
import com.tilismtech.tellotalksdk.managers.TelloApiClient;


public class AppController extends TelloApplication {

    public static AppController instance;
    private TelloApiClient telloApiClient;

    public static AppController getInstance(){
        return instance;
    }


    @Override
    public void onCreate() {
        super.onCreate();

        instance = this;
        TelloApiClient.Builder builder = new TelloApiClient.Builder()
                .accessKey("A954439C518E4F8F8B7DD7E1C46B98")
                .projectToken("8380AD8EDE754D8F9F6E04C0651630")
                .CRYPTO_LIB_KEY("SezTe7ooA1jzUwSOHpzXndc8D5AIxxnL")
                .CRYPTO_LIB_IV("sA@A&mskNJ!RmQ?J");
          //      .notificationIcon(R.drawable.clock_icon);
        telloApiClient = builder.build();
      //  telloApiClient.setGoogleApiKey(getString(R.string.API_KEY));
    }

    public TelloApiClient getTelloApiClient() {
        return telloApiClient;
    }

    @Override
    public void attachBaseContext(Context context){
        super.attachBaseContext(context);
        MultiDex.install(this);
    }
}
