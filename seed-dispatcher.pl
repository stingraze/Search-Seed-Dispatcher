use Encode qw/decode/;

$outfile = "seeds.txt";

open(FH, "meishi.txt");
@file = <FH>;
close(FH);


open(FH2, ">$outfile"); 
foreach $data (@file) {
$data =~ s/(\W)/'%'.unpack("H2", $1)/ego;
$data =~ tr/ /+/;
  chomp($data);
  print FH2 "http://www.superai.online/solr/search.php?query=$data\n";
}

close FH2;