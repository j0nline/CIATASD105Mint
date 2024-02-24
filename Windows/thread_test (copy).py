# import the threading module
import threading

#define a function to print numbers
def print_nums():
    for i in range(10):
        print(i)

#define a function to print characters
def print_chars():
    for i in range(97, 107):
        print(chr(i))

#create two threads, one for each function
thread1 = threading.Thread(target=print_nums)
thread2 = threading.Thread(target=print_chars)

#start the threads
thread1.start()
thread2.start()

#wait for the threads to finish
thread1.join()
thread2.join()

#print a message indicating the end of the program
print("End of Program")

