#include<stdio.h>
#include<stdlib.h>
#include<time.h>

int main() {
    int s_n , guess, attempts = 0 ;
    char choose ; 

    srand(time(0)) ; 
    s_n = rand() % 100 + 1 ;

    printf("Enter q to exit or any key to continue to the program! : \n") ;
    scanf(" %c", &choose) ;
    if (choose == 'q') {
        printf("Program exit!\n") ;
        return 0 ; 
    }

    while(1) {
        printf("Enter your guess : \n") ;
        if(scanf("%d", &guess) != 1) {
            printf("Error!Enter number only! : \n") ;
            while(getchar() != '\n') ; // buffer clear 
            continue;
        }
        attempts++ ;

        if (guess > s_n) {
            printf("Too big!\n") ;
            continue ;
        } else if (guess < s_n) {
            printf("Too small!\n") ;
            continue ;
        }
        else {
            printf("Congratulation! you did in : %d attempts", attempts) ;
            break ;
        } 
    }
    return 0 ;
}
