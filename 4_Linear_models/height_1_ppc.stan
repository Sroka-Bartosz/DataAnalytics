generated quantities {
    real mi = normal_rng(175, 15);      // Prior on mean height
    real sigma = exponential_rng(0.07);   // Prior on standard deviation of height
    real height = normal_rng(mi, sigma);
}