package ${packageName};

import android.os.Bundle;
import android.support.annotation.NonNull;

import ${packageName}.R;
import ${packageName}.view.${contractClass};
import ${packageName}.presenter.${presenterClass};



public class ${fragmentClass} extends BaseFragment implements ${contractClass}.View{

    Unbinder unbinder;
    private ${presenterClass}.Presenter mPresenter;

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
    public void setPresenter(MessageContract.Presenter presenter) {
        mPresenter = presenter;
    }
}

