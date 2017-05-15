clear; clc;
score = [5 10 15 20 17 10];
printf('mean: %i \n', mean(score));
printf("median: %i\n", median(sort(score)));
printf("mode: %i\n", mode(score));
printf("min: %i\n", min(score));
printf("max: %i\n", max(score));

# for i=1:2:7
#   printf("%i^2 = %i\n",i, i^2);
# end
