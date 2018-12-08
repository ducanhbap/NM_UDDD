package com.example.minh.appbanhang;

import android.os.Build;
import android.support.design.widget.NavigationView;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.widget.ListView;
import android.widget.Toolbar;
import android.widget.ViewFlipper;

public class MainActivity extends AppCompatActivity {
    Toolbar toolbar;
    ViewFlipper viewFlipper;
    RecyclerView recyclerViewmanhinhchinh;
    NavigationView  navigationView;
    ListView  listViewmanhinhchinh;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Anhxa();
    }

    private void Anhxa() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            toolbar = (Toolbar) findViewById(R.id.Toolbarmanhinhchinh);
        }
        viewFlipper=(ViewFlipper)findViewById(R.id.viewflipper);
        recyclerViewmanhinhchinh=(RecyclerView)findViewById(R.id.recyclerview);
        navigationView=(NavigationView)findViewById(R.id.navigationview);
        listViewmanhinhchinh=(ListView)findViewById(R.id.listview);
    }

}
