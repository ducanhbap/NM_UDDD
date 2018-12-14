package com.dmt.chandoi.appbanhang.activity;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.ListView;
import android.widget.Toolbar;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.dmt.chandoi.appbanhang.R;
import com.dmt.chandoi.appbanhang.adapter.BanhPizzaAdapter;
import com.dmt.chandoi.appbanhang.adapter.DienThoaiAdapter;
import com.dmt.chandoi.appbanhang.model.SanPham;
import com.dmt.chandoi.appbanhang.ultil.CheckConnection;
import com.dmt.chandoi.appbanhang.ultil.Server;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public abstract class BanhPizzaActivity extends AppCompatActivity {
   android.support.v7.widget.Toolbar toolbarBanhPizza;
   ListView  lvBanhPizza;
   BanhPizzaAdapter  BanhPizzaAdapter;
   ArrayList<SanPham> mangBanhPizza;
   int idBanhPizza=0;
   int page=1;


    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_banh_pizza);
        Anhxa();
        if(CheckConnection.haveNetworkConnection(getApplicationContext()))
        {
            GetIdloaisp();
            ActionToolBar();
            GetData(page);

        }
        else
        {
            CheckConnection.showToast_Short(getApplicationContext(),"Ban hay kiem tra lai internet");
            finish();
        }


    }

    private void GetData(int Page) {
        RequestQueue requestQueue=Volley.newRequestQueue(getApplicationContext());
        String duongdan=Server.duongdanBanhPizza +String.valueOf(Page);
        StringRequest stringRequest=new StringRequest(Request.Method.POST, duongdan, new Response.Listener<String>() {
            @Override
            public void onResponse(String response) {
                int id=0;
                String TenBanhPizza="";
                int GiaBanhPizza = 0;
                String HinhanhBanhPizza="";
                String Mota="";
                int idloaispBanhPizza=0;
                if(response !=null)
                {
                    try {
                        JSONArray jsonArray=new JSONArray((response));
                        for(int i=0;i<jsonArray.length();i++)
                        {
                            JSONObject jsonObject=jsonArray.getJSONObject(i);
                            id=jsonObject.getInt("id");
                            TenBanhPizza=jsonObject.getString("tensp");
                            GiaBanhPizza=jsonObject.getInt("giasp");
                            HinhanhBanhPizza=jsonObject.getString("hinhanhsp");
                            Mota= jsonObject.getString("motasp");
                            idloaispBanhPizza=jsonObject.getInt("idsp");
                            mangBanhPizza.add(new SanPham(id,TenBanhPizza,GiaBanhPizza,HinhanhBanhPizza,Mota,idloaispBanhPizza));
                            BanhPizzaAdapter.notifyDataSetChanged();

                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                        CheckConnection.showToast_Short(getApplicationContext(),"sai");
                    }
                }

            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {

            }
        }){
            @Override
            protected Map<String, String> getParams() throws AuthFailureError {
                HashMap<String,String> param =new HashMap<String, String>();
                param.put("idsanpham",String.valueOf(idBanhPizza));
                return super.getParams();
            }
        };
        requestQueue.add(stringRequest);
    }

    private void ActionToolBar() {
        setSupportActionBar(toolbarBanhPizza);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        toolbarBanhPizza.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });

    }

    private void GetIdloaisp()
    {
        idBanhPizza=getIntent().getIntExtra("idloaisanpham",-1);
        Log.d("gia tri loai san pham",idBanhPizza+"");
    }

    private void Anhxa() {

        toolbarBanhPizza=(android.support.v7.widget.Toolbar) findViewById(R.id.toolbarBanhPizza);
        lvBanhPizza=(ListView) findViewById(R.id.listviewBanhPizza);
        mangBanhPizza=new ArrayList<>();
        BanhPizzaAdapter=new BanhPizzaAdapter(getApplicationContext(),mangBanhPizza);
        lvBanhPizza.setAdapter(BanhPizzaAdapter);


    }


}
