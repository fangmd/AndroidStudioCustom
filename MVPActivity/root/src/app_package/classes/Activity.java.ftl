package ${packageName};

import android.os.Bundle;


import ${packageName}.R;


public class ${activityClass} extends BaseActivity {

    public static void actionStart(Context context){
        Intent intent = new Intent(context, ${activityClass}.class);

        context.startActivity(intent);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});

        Intent intent = getIntent();
        if (intent != null) {


        }else {
            throw new RuntimeException("use actionStart");
        }


        ${fragmentClass} fragment = (${fragmentClass}) getSupportFragmentManager().findFragmentById(R.id.content);
        if (fragment == null) {
            fragment = ${fragmentClass}.newInstance(mCourseId, mCourseName);
            FragmentTransaction transaction = getSupportFragmentManager().beginTransaction();
            transaction.add(R.id.content, fragment);
            transaction.commit();
        }

        new ${presenterClass}(fragment);
    }

}
