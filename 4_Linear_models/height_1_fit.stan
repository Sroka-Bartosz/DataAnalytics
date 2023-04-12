data {
    int N;
    real list_of_heights[N];
}

parameters {
   real mi;
   real sigma;
}

model {
   mi ~ normal(175, 15);
   sigma ~ exponential(0.07);
   list_of_heights ~ normal(mi, sigma);
}

generated quantities {
   real height = normal_rng(mi, sigma);
}