package com.github.nukc.stateview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

public class StateView extends View {
    public StateView(Context context) {
        super(context);
    }
    public StateView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }
    public static StateView inject(View view) {
        return new StateView(view.getContext());
    }
    public void showEmpty() {}
    public void showLoading() {}
    public void showContent() {}
    public void showRetry() {}
    public void setEmptyResource(int res) {}
    public void setLoadingResource(int res) {}
    public void setRetryResource(int res) {}
    public void setOnRetryClickListener(OnRetryClickListener listener) {}

    public interface OnRetryClickListener {
        void onRetryClick();
    }
}
