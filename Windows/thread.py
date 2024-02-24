import threading
import time

class MyThread(threading.Thread):
    def __init__(self, name, num):
        threading.Thread.__init__(self)
        self.name = name
        self.num = num
        self.finished = False

    def run(self):
        for i in range(self.num, 0, -1):
            print(f"{self.name}: Count {i}")
            time.sleep(1)
        self.finished = True

    def is_finished(self):
        return self.finished

# Create five instances of the MyThread class with different countdowns
thread1 = MyThread("Thread 1", 5)
thread2 = MyThread("Thread 2", 4)
thread3 = MyThread("Thread 3", 3)
thread4 = MyThread("Thread 4", 2)
thread5 = MyThread("Thread 5", 1)

# Start the threads
thread1.start()
thread2.start()
thread3.start()
thread4.start()
thread5.start()

# Wait for all threads to finish before continuing
thread1.join()
thread2.join()
thread3.join()
thread4.join()
thread5.join()

# Check if each thread has finished
print("Checking if all threads have finished...")
threads = [thread1, thread2, thread3, thread4, thread5]
for t in threads:
    print(f"{t.name} finished: {t.is_finished()}")

# Print a message to indicate that the program has finished
print("Program finished.")

