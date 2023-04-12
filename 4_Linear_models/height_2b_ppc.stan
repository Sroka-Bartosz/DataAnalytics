data {
    int N;
    real weight[N];
}

generated quantities {
    real height[N];
    real alpha = normal_rng(175, 15);
    real beta = lognormal_rng(0, 1);
    real sigma = exponential_rng(0.07);
    for (idx in 1:N) {
        height[idx] = normal_rng(weight[idx] * beta + alpha, sigma);
    }
}