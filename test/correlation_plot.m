# bookings = data(:,2);
# searches = data(:,3);
# prices   = data(:,4);
# unique_searches = data(:,5);
# avg_results = round(data(:,6));
# requests = round(data(:,7));
# requests_accepted = round(data(:,8));
# requests_per_guest = round(data(:,9));
# host5 = round(data(:,10));
# host10 = round(data(:,11));
# host15 = round(data(:,12));
# host20 = round(data(:,13));
# host20p = round(data(:,14));
# distance = round(data(:,15));

#printf('correlation coefficient : %20.2f\n', corr(hosts, bookings))
#printf('hosts/bookings             R_sq %5.1f%%\n', rsq(hosts, bookings));
#printf('searches/bookings          R_sq %5.1f%%\n', rsq(searches, bookings));
#printf('prices/bookings            R_sq %5.1f%%\n', rsq(prices, bookings));
#printf('unique_searches/bookings   R_sq %5.1f%%\n', rsq(unique_searches, bookings));
#printf('avg_results/bookings       R_sq %5.1f%%\n', rsq(avg_results, bookings));
#printf('requests/bookings          R_sq %5.1f%%\n', rsq(requests, bookings));
#printf('requests_accepted/bookings R_sq %5.1f%%\n', rsq(requests_accepted, bookings));
#printf('requests-guest/bookings    R_sq %5.1f%%\n', rsq(requests_per_guest, bookings));
#printf('host5/bookings             R_sq %5.1f%%\n', rsq(host5, bookings));
#printf('host10/bookings            R_sq %5.1f%%\n', rsq(host10, bookings));
#printf('host15/bookings            R_sq %5.1f%%\n', rsq(host15, bookings))
#printf('host20/bookings            R_sq %5.1f%%\n', rsq(host20, bookings));
#printf('host20p/bookings           R_sq %5.1f%%\n', rsq(host20p, bookings));
#printf('distance/bookings          R_sq %5.1f%%\n', rsq(distance, bookings));

# mm = max(hosts);
#
# plot(hosts, bookings, 'rx');
#
# # b = ols(hosts, bookings);
# # printf('ols: %f \n', b);
# # hold on;
# # plot([0:mm], [0:mm]*b, 'g-')
# # hold off;
#
# # linear regression
# m = length(hosts);
# X = [ones(m, 1), hosts, searches];
# theta = (pinv(X'*X))*X'*bookings;
# printf("bookings = %f + (%f*hosts) + (%f*searches) \n", theta);
#
# hold on;
# plot(sort(X(:,2)), sort(sum((X.*theta')')), 'b-')
# hold off;
#
# legend ('Data', 'Linear regression')
#
# #xmin=0;xmax=1000;ymin=0;ymax=500;
# #axis([xmin xmax ymin ymax]);
# grid;
# xlabel('hosts');
# ylabel('bookings');
# title('Host bookings correlation');
#
# # # replot
