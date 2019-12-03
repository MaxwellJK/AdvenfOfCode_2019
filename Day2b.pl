use strict;
use warnings;
 
my $filename = 'Day2.source.txt';

open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";
 
my $row = <$fh>;

my @OpCodes=split(',',$row);

my @OpCodesOrig=split(',',$row);

for (my $x=0; $x <=99; $x++)
{
for (my $y=0; $y<=99; $y++)
{
my $idx=0;
@OpCodes=@OpCodesOrig;
$OpCodes[1]=$x;
$OpCodes[2]=$y;
while ($OpCodes[$idx]!=99)
{	
	#print join(",",@OpCodes)."\n";

	my $op=$OpCodes[$idx];
	my $firstNumber=$OpCodes[$idx+1];
	my $secondNumber=$OpCodes[$idx+2];
	my $Destination=$OpCodes[$idx+3];

	#print $op." ".$OpCodes[$firstNumber]." ".$OpCodes[$secondNumber]." ".$OpCodes[$Destination]."\n";	
	if ($op==1)
	{
		$OpCodes[$Destination]=$OpCodes[$firstNumber]+$OpCodes[$secondNumber];
		#print $OpCodes[$Destination];
	}
	elsif ($op==2)
	{
		$OpCodes[$Destination]=$OpCodes[$firstNumber]*$OpCodes[$secondNumber];
		#print $OpCodes[$Destination];
	}
	elsif ($op==99)
	{
		print $OpCodes[0];
	}

	$idx = $idx+4;
	#print "\n\n\n";
}

#print $OpCodes[0];

if ($OpCodes[0]==19690720)
	{
		print $OpCodes[1]." ".$OpCodes[2]."\n";
		print 100*$OpCodes[1]+$OpCodes[2]; 
	}
}
}
