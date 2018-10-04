function [mat P outdeg] = graphToAdjMatrix(filename,nodes,edges);

if nargin == 0;
   [mat P outdeg] = graphToAdjMatrix('Wiki-Vote.txt',8298,103689);
   return
end
%file = 'Wiki-Vote.txt';
fileID = fopen(filename,'r');
%nodes = 7118;
%edges = 103689;
%formatSpec = '%d %d \n';
%sizeMat = [edges 2];
mat = zeros(nodes);
P = zeros(nodes);
outdeg = zeros(1,nodes);
sizeGraph = [2 Inf];
graph = fscanf(fileID, '%d', sizeGraph);
%for k = 1:edges
%end
%A = A';
graph = graph';
%i
%j
fclose(fileID);
%mat = graph;
for k = 1:edges
i = graph(k,1)+1;
j = graph(k,2)+1;
mat(i,j) = 1;
outdeg(1,i)=outdeg(1,i)+1;

end
for k = 1:edges
i = graph(k,1)+1;
j = graph(k,2)+1;
P(i,j) = 1 /outdeg(1,i); 

end