package ${packageName};

import android.support.annotation.NonNull;

public class ${presenterClass} implements ${contractClass}.Presenter {

	@NonNull
    private final ${contractClass}.View mView;

    private CompositeDisposable mCompositeDisposable = new CompositeDisposable();

    public ${presenterClass}(@NonNull ${contractClass}.View view) {
        mView = view;
        mView.setPresenter(this);
    }

    @Override
    public void loadData(){

    }

    @Override
    public void subscribe(DisposableObserver disposableObserver) {
        mCompositeDisposable.add(disposableObserver);
    }

    @Override
    public void unsubscribe() {
        mCompositeDisposable.clear();
    }
}
