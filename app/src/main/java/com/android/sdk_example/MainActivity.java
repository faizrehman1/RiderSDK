package com.android.sdk_example;

import androidx.appcompat.app.AppCompatActivity;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

//import com.tilismtech.tellotalksdk.listeners.OnSuccessListener;
//import com.tilismtech.tellotalksdk.ui.gallery.Fragments.OneFragment;


import com.tilismtech.tellotalksdk.listeners.OnSuccessListener;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class MainActivity extends AppCompatActivity {

    @BindView(R.id.username)
    EditText username;
    @BindView(R.id.password)
    EditText password;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ButterKnife.bind(this);
         checkLogin();

    }

    private void checkLogin() {
//        if (AppController.getInstance().getTelloApiClient().isRegistered()) {
//            final ProgressDialog progressDialog = ProgressDialog.show(MainActivity.this, "", "please wait...");
//            AppController.getInstance().getTelloApiClient().login(new OnSuccessListener<Boolean>() {
//                @Override
//                public void onSuccess(Boolean object) {
//                    progressDialog.dismiss();
//                    if (!object) {
//                        Toast.makeText(MainActivity.this, "Login Failed.", Toast.LENGTH_LONG).show();
//                        return;
//                    }
//                    startActivity(new Intent(MainActivity.this, HomeActivity.class));
//                    finish();
//                }
//            });
//        }
    }

    @OnClick({R.id.next_btn})
    public void actions(View view){

       int id =  view.getId();
       switch (id){
           case R.id.next_btn:
               DoCallForRegisterUser();
               break;
       }

    }
    private void DoCallForRegisterUser() {
        final ProgressDialog progressDialog = ProgressDialog.show(MainActivity.this, "", "please wait...");
        String profileId = username.getText().toString();
        String userName =  password.getText().toString();
        AppController.getInstance().getTelloApiClient().registerUser( profileId,"test",profileId,"", new OnSuccessListener<Boolean>() {
            @Override
            public void onSuccess(Boolean object) {
                progressDialog.dismiss();
                if (object) {
                    startActivity(new Intent(MainActivity.this, HomeActivity.class));
                   finish();
                } else {
                    Toast.makeText(MainActivity.this, "Registration Failed.", Toast.LENGTH_LONG).show();
                }
            }
        });
    }
}
