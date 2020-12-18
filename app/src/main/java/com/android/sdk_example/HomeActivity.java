package com.android.sdk_example;

import androidx.appcompat.app.AppCompatActivity;

import android.Manifest;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.util.Log;
import android.view.View;
import android.widget.Button;


import com.tilismtech.tellotalksdk.listeners.OnSuccessListener;
import com.tilismtech.tellotalksdk.managers.TelloApiClient;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

//import static com.tilismtech.tellotalksdk.utils.Config.ATTACHMENT_CHOICE_CONTACT;


public class HomeActivity extends AppCompatActivity {

    @BindView(R.id.btn_openchat)
    Button btn_openchat;
    private TelloApiClient telloApiClient;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);
        ButterKnife.bind(this);
        telloApiClient = AppController.getInstance().getTelloApiClient();
//        if (!EasyPermissions.hasPermissions(TelloApplication.getInstance(), Manifest.permission.READ_CONTACTS)) {
//            EasyPermissions.requestPermissions(this, Html.fromHtml(getString(com.tilismtech.tellotalksdk.R.string.contact_permission)).toString(), ATTACHMENT_CHOICE_CONTACT, Manifest.permission.READ_CONTACTS);
//            return;
//        }
    }

    @OnClick({R.id.btn_openchat,R.id.open_chat,R.id.logout_chat})
    public void actions(View view){

        int id = view.getId();

        switch (id){

            case R.id.btn_openchat:
                telloApiClient.openChatList(HomeActivity.this);

                break;
            case R.id.open_chat:
                telloApiClient.openCorporateChat(HomeActivity.this);
                break;
            case R.id.logout_chat:
                telloApiClient.logOff(new OnSuccessListener<Boolean>()  {
                    @Override
                    public void onSuccess(Boolean aBoolean) {
                        Log.d("Boolean1",""+aBoolean);
                    }
                });
                telloApiClient.ClearUserData(new OnSuccessListener<Boolean>() {
                    @Override
                    public void onSuccess(Boolean aBoolean) {
                        Log.d("Boolean2",""+aBoolean);
                    }
                });
                startActivity(new Intent(HomeActivity.this, MainActivity.class));
                finish();
                break;
        }

    }
}
