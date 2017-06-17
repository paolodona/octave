clear;
vps = 0:0.001:0.06;
cps = 0.00125;
shares = 1669048*5;

cost = cps * shares;
value = vps * shares;
gain = max(value - cost, 0);
tax = gain * 0.52;
total = cost + tax;

plot(vps,total,'b-', vps, tax, 'r--', vps, cost,'r' )

xlabel('value per share')
ylabel('total, tax, ex.cost')

