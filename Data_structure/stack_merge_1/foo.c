//merge two stacks then make new stack. but only use push and pop
//stack1: {0,1,2,3,4}, stack2:{5,6,7,8,9} , result : {0,1,2,3,4,5,6,7,8,9}

#include <stdio.h>
#include <stdlib.h>

typedef struct node{
	void* data_ptr;
	struct node* link;
} STACK_NODE;

typedef struct stack{
	int count;
	STACK_NODE* top;
} STACK;

STACK* create_stack();

int push(STACK* stack, void* in);
void* pop(STACK* stack);

int main(){
	int i;
	int* temp1;
	int* temp2;
	int* temp3;
	int* temp4;
	STACK* stack1= create_stack();
	STACK* stack2= create_stack();
	STACK* stack3= create_stack();
	STACK* stack4= create_stack();

	int num1[5]={0,1,2,3,4};
	int num2[5]={5,6,7,8,9};
	printf("\n<stack1 push>\n");
	for(i=0;i<5;i++){
		push(stack1, &num1[i]);
		printf("push: %d\n", num1[i]);
	}
	printf("\n<stack2 push>\n");
	for(i=0;i<5;i++){
		push(stack2, &num2[i]);
		printf("push: %d\n", num2[i]);
	}
	printf("\n");
	
	for(i=0;i<5;i++){
		temp2=(int*)pop(stack2);
		push(stack3, temp2);
	}
	for(i=0;i<5;i++){
		temp1=(int*)pop(stack1);
		push(stack3, temp1);
	}
	for(i=0;i<10;i++){
		temp3=(int*)pop(stack3);
		push(stack4, temp3);
	}
	for(i=0;i<10;i++){
		temp4=(int*)pop(stack4);
		printf("pop : %d\n", *temp4);
	}
}

STACK* create_stack(){
	STACK* stack = (STACK*)malloc(sizeof(STACK));
	if(!stack)
		return 0;
	stack->count=0;
	stack->top=0;
	return stack;
}

int push(STACK* stack, void* in){
	STACK_NODE* node = (STACK_NODE*)malloc(sizeof(STACK_NODE));
	if(!stack)
		return 0;
	node->data_ptr=in;
	node->link=stack->top;
	stack->top=node;
	stack->count++;

	return 1;
}

void* pop(STACK* stack){
	if(stack->count==0)
		return 0;
	else{
		STACK_NODE* temp=stack->top;
		void* data_out = stack->top->data_ptr;
		stack->top = stack->top->link;
		free(temp);
		stack->count--;
		return data_out;
	}
}
