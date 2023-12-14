activity_main.xml
<?xml version="1.0" encoding="utf-8"?>
<TableLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    tools:context=".MainActivity">
    <TableRow
        android:layout_width="wrap_content"
        android:layout_height="wrap_content">
        <TextView
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:text="@string/un" />
        <EditText
            android:id="@+id/user"
            android:layout_width="311dp"
            android:layout_height="wrap_content"
            android:hint="user" />
    </TableRow>

    <TableRow
        android:layout_width="wrap_content"
        android:layout_height="wrap_content">
        <TextView
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:text="@string/ps"
            />
        <EditText
            android:id="@+id/pass"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:hint="****"
            android:inputType="textPassword" />
    </TableRow>

    <TableRow
        android:layout_width="match_parent"
        android:layout_height="match_parent">
        <Button
            android:id="@+id/btn"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:text="Login" />
    </TableRow>
</TableLayout>

MainActivity.java
package com.example.login;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
public class MainActivity extends AppCompatActivity {
    Button b;
    EditText ed1, ed2;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ed1 = findViewById(R.id.user);
        ed2 = findViewById(R.id.pass);
        b = findViewById(R.id.btn);
        b.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String txt1 = ed1.getText().toString().trim();
                String txt2 = ed2.getText().toString().trim();

                if(txt1.isEmpty() || txt2.isEmpty()){
                    Toast.makeText(MainActivity.this, "Please input Username and Password", Toast.LENGTH_SHORT).show();
                }
                else if(txt1.equals("sneha") || txt2.equals("sneha123")) {
                    Toast.makeText(MainActivity.this, "Login Successful", Toast.LENGTH_LONG).show();
                }
                else{
                    Toast.makeText(MainActivity.this, "Login Failed", Toast.LENGTH_SHORT).show();
                }
            }
        });

    }
}
strings.xml
<resources>
    <string name="app_name">Login</string>
    <string name="un">User Name: </string>
    <string name="ps">Password: </string>
</resources>
