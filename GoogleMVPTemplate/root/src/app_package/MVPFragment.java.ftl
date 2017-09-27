package ${packageName};

import ${applicationPackage}.R;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.support.v4.app.Fragment;
import android.support.annotation.NonNull;

public class ${fragmentClass} extends BaseFragment implements ${contractClass}.View {

    Unbinder unbinder;
    private ${contractClass}.Presenter mPresenter;

    public ${fragmentClass}() {
        // Required empty public constructor
    }

    public static ${fragmentClass} newInstance() {

        Bundle args = new Bundle();

        ${fragmentClass} fragment = new ${fragmentClass}();
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.${fragmentLayoutName}, container, false);
        unbinder = ButterKnife.bind(this, view);
        return view;
    }

    @Override
    protected void initView() {
        
    }

    @Override
    protected void initData() {

    }

    @Override
    public void onResume() {
        super.onResume();

    }

    @Override
    public void showData(){

    }

    @Override
    public void showLoading(boolean show) {
        if (show) {
            showLoadingDialog();
        }else{
            hideLoadingDialog();
        }
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        unbinder.unbind();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        mPresenter.unsubscribe();
    }

    @Override
    public void setPresenter(@NonNull ${contractClass}.Presenter presenter) {
        mPresenter = presenter;
    }

}
