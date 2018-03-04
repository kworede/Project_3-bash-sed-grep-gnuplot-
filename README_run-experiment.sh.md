run-experiment.sh
# This script take a file with a list of URLs as argument as an input and executes perform-measurement.sh on each URL in the file.
# For each URL, run-experiment.sh will produce the following output, separated by spaces:
# rank URL page-size
# The rank of a page is the line number of the corresponding URL in popular.txt (or whatever the input file containing the URLs is named). 
# The URL on the first line of the table has rank 1, the URL on the second line has rank 2, and so on until the last URL/line in the file. 
# The URL is the same string as the argument we gave to perform-measurement.sh. The page-size is the result of perform-measurement.sh.
# run-experiment.sh should write its output to a file. The name of that file should be given by the user as second argument.
# If perform-measurement.sh returns zero for a URL, run-experiment.sh should not write any output to the file for that URL.
# Because it can take a long time for the experiment to finish, the script should provide feedback to the user. The feedback should indicate the progress of the experiment.

Executing the script as follows:

> run-experiment.sh popular-small.txt results-small.txt

will produce output similar to the following:

Performing measurement on http://courses.cs.washington.edu/courses/cse374/15au/
...success
Performing measurement on http://i.will.return.an.error
...failed
Performing measurement on http://courses.cs.washington.edu/courses/cse374/15au/syllabus.html
...success

And the content of results-small.txt should be similar to the ones below. Note that the exact values will change as we edit the class website!

1 http://courses.cs.washington.edu/courses/cse374/15au/ 10042
3 http://www.amazon.com/ 157147
4 http://www.about.com/ 96537
5 http://www.bartleby.com/ 41402 
