function results = CS5140()

load ngonzalez1.dat;
[n,d] = size(ngonzalez1);

dissimilarities = pdist(ngonzalez1);


[Y,stress] = cmdscale(dissimilarities,2,'criterion','metricsstress');
distances = pdist(Y);
%plot(dissimilarities,distances,'bo', [0 max(dissimilarities)],[0 max(dissimilarities)],'r.-');
scatter(dissimilarities,distances,'ro');
xlabel('Dissimilarities'); ylabel('Distances')

hold on
load ngonzalez2.dat;
[n,d] = size(ngonzalez2);

dissimilarities = pdist(ngonzalez2);


[Y,stress] = cmdscale(dissimilarities,2,'criterion','metricsstress');
distances = pdist(Y);
%plot(dissimilarities,distances,'bo', [0 max(dissimilarities)],[0 max(dissimilarities)],'r.-');
scatter(dissimilarities,distances,'bo');
xlabel('Dissimilarities'); ylabel('Distances')

hold off



hold on
load ngonzalez4.dat;
[n,d] = size(ngonzalez4);

dissimilarities = pdist(ngonzalez4);


[Y,stress] = cmdscale(dissimilarities,2,'criterion','metricsstress');
distances = pdist(Y);
%plot(dissimilarities,distances,'bo', [0 max(dissimilarities)],[0 max(dissimilarities)],'r.-');
scatter(dissimilarities,distances,'co');
xlabel('Dissimilarities'); ylabel('Distances')

hold off
disp('Done');

end