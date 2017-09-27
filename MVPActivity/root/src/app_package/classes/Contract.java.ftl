package ${packageName};



public class ${contractClass} {

    interface View extends BaseView<Presenter>{

        void showData(); //(List<TeachNotiEntity> , boolean clear);

        void showLoading(boolean show);

    }

    interface Presenter extends BasePresenter{
    	void loadData();
    }
}