CC = gcc
FLG = -O4
NAME = pagerank_openmp

pagerank_openMP: pageRank_openMP.c

	$(CC) pageRank_openMP.c -fopenmp -lm -o $(NAME)

clean:
	rm -f *.o *.out *.exe
	rm -f *.bin
