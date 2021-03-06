function results = CS5140()

load nlloyds1.dat;
[n,d] = size(nlloyds1);

dissimilarities = pdist(nlloyds1);


[Y,stress] = mdscale(dissimilarities,2,'criterion','metricsstress');
distances = pdist(Y);
%plot(dissimilarities,distances,'bo', [0 max(dissimilarities)],[0 max(dissimilarities)],'r.-');
scatter(dissimilarities,distances,'ro');
xlabel('Dissimilarities'); ylabel('Distances')

hold on
load nlloyds2.dat;
[n,d] = size(nlloyds2);

dissimilarities = pdist(nlloyds2);


[Y,stress] = mdscale(dissimilarities,2,'criterion','metricsstress');
distances = pdist(Y);
%plot(dissimilarities,distances,'bo', [0 max(dissimilarities)],[0 max(dissimilarities)],'r.-');
scatter(dissimilarities,distances,'bo');
xlabel('Dissimilarities'); ylabel('Distances')

hold off

hold on
load nlloyds4.dat;
[n,d] = size(nlloyds4);

dissimilarities = pdist(nlloyds4);


[Y,stress] = mdscale(dissimilarities,2,'criterion','metricsstress');
distances = pdist(Y);
%plot(dissimilarities,distances,'bo', [0 max(dissimilarities)],[0 max(dissimilarities)],'r.-');
scatter(dissimilarities,distances,'go');
xlabel('Dissimilarities'); ylabel('Distances')

hold off



hold on
plot(0,0,'yo');
hold off


end