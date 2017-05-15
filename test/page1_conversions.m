conversion = csvread('conversion.csv')
page1 = csvread('page1.csv')

#conversion = round(conversion)
c = corr (conversion,page1)

# plot(page1, conversion, 'x', c, 'r--')
plot(c)

xmin=40;xmax=100;ymin=0;ymax=20;
axis([xmin xmax ymin ymax]);
grid
xlabel('% of page1 impressions')
ylabel('listing to profile conversion %')

# title('Data from Experiment 1')
# replot

