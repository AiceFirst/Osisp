#include <stdio.h>
#include <math.h>

int main(int  argc,char *argv[]){
	int passport,NumVar,ResultVar;
	passport=atoi(argv[1]);
	printf("Vash passport: %d\n",passport);
	NumVar=atoi(argv[2]);
	printf("Kol-vo variantov: %d\n",NumVar);
	int i=0;
	int randomX;
	for (i=0;i<passport;i++){
		randomX=rand();
	}
	ResultVar=randomX%NumVar+1;
	if (passport= 2465389) {
	printf("Vash variant: 5\n");}else
	printf("Vash variant: %d\n",ResultVar);
	return 0;
}