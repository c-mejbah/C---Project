#include<stdio.h>
#include<stdlib.h>

int main() {
    int choose ;
    
    void addExpense(); 
    void viewExpense();
    void totalExpense();

    while(1) {
        printf("=======SMART EXPENSE TRACKER=======\n") ;
        printf("Enter -> 1 to Add Expense\n") ;
        printf("Enter -> 2 to View Expense\n") ;
        printf("Enter -> 3 to Total Expense\n") ;
        printf("Enter -> 4 to Exit\n") ;

        printf("Enter choice : \n") ;
        if(scanf("%d", &choose) != 1) {
            printf("Error! Enter number only!\n") ;
            while(getchar() != '\n') ;
            continue ;
        }

        switch(choose) {
            case 1:
                addExpense() ;
                break ;

            case 2: 
                viewExpense() ;
                break ;

            case 3: 
                totalExpense() ;
                break ;
            case 4: 
                exit(0) ;
        }
    }
    return 0 ;
}

typedef struct  {
    char category[50] ;
    float amount; 
} Expense ;

void addExpense() {
    Expense e ;

    FILE *file = fopen("expense.txt", "a") ;

    if(file == NULL) {
        printf("File error!\n") ;
        return ;
    }

    printf("Enter Category: \n") ;
    scanf("%s", e.category) ;

    printf("Enter Amount : \n") ;
    scanf("%f", &e.amount) ;

    fprintf(file, "%s %.2lf\n", e.category, e.amount) ;

    fclose(file) ;
    printf("Expense saved successfully!\n")  ;
}

void viewExpense() {
    Expense e; 
    FILE *file = fopen("expense.txt", "r") ;

    if(file == NULL) {
        printf("No expense data found\n") ;
        return ;
    }
    printf("\n-----Expense List-----\n") ;

    while(fscanf(file, "%s %f", e.category, &e.amount) != EOF) {
        printf("Category: %s | Amount: %.2lf\n",e.category, e.amount ) ;
    }
    fclose(file) ;
}

void totalExpense() {
    Expense e ;
    FILE *file ;
    float total = 0 ;

    file = fopen("expense.txt","r" ) ;
    
    if(file == NULL) {
        printf("No data available") ;
        return ;
    }

    while(fscanf(file, "%s %f", e.category, &e.amount) != EOF) {
        total += e.amount ;
    }

    fclose(file) ;
    printf("Total Expense: %.2lf\n", total) ;
}
