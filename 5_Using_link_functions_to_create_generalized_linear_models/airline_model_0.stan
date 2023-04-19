generated quantities {
    real alpha = normal_rng(3.2, 1);
    real theta = normal_rng(0.4, 0.1);
    real n = normal_rng(0, 1);
    real lambda = exp(alpha + theta * n);
    int y = poisson_rng(lambda);
}