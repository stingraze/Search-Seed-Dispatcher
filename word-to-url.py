print "Enter File Path for Words Text File:"
filepath = raw_input()
words = open(filepath, "r")
for line in words:
    print "http://www.superai.online/solr/search.php?query="  + line.rstrip()
