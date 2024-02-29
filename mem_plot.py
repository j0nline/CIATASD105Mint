import numpy as np
import plotext as plt

digit_list = []
header_list = []
memType_list = []

handle = open("memory_data.txt", "r")

file_content = handle.read()

file_list = file_content.split()

for value in file_list:
	if value.isdigit():
		digit_list.append(int(value))
	elif value != "Mem:" and value !=  "Swap:":
		header_list.append(value)
	else:
		memType_list.append(value)

x_len = len(header_list)

y = np.array(digit_list)


plt.bar(y)

plt.title("Mem and Swap Memory Usage")

plt.ylabel("Megabytes")

plt.xlabel(memType_list[0] + '' + ' , '.join(header_list))

plt.show()
