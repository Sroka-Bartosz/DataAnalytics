data{
    int N;
    real n_i[N];
    int y[N];
}

parameters{
    vector[N] alpha;
    real theta;
}

model{
    alpha ~ normal(3.2, 1); 
    theta ~ normal(0.4, 0.1);  
    for (i in 1:N){
        y[i] ~ poisson_log(alpha[i] + theta * n_i[i]);
    }
}
generated quantities {
    real y_pred[N];
    for (i in 1:N){
        y_pred[i] = poisson_log_rng(alpha[i] + theta *n_i[i]);
    }
}