data {
    int N;
    vector[N] weight;
    real list_of_heights[N];
}

parameters {
   real alpha;
   real beta;
   real sigma;
}

transformed parameters {
   vector[N] mi = weight * beta + alpha;
}

model {
    alpha ~ normal(175, 15);
    beta ~ lognormal(0, 1);
    sigma ~ exponential(0.07);
    list_of_heights ~ normal(mi, sigma);
}

generated quantities {
    real height[N];
    for (i in 1:N) {
        height[i] = normal_rng(mi[i], sigma);
    }
}