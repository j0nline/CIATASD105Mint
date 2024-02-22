# AND and OR statements

count=11

if [ "$count" -gt 10 ] && [ "$count" -lt 100 ]   # or can be expressed by ||
then
	echo "statement true"
else
	echo "statement false"
fi	
