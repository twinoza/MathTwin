#!/usr/bin/perl
#
#This is a script that goes through the spice file and changes XX in the line ".param i_in=XX" to sweep over the range of values specified by each element of iInArray * 5.
$filename = "sim_BasicSoma.sp";

my @iInArray = 1..10;

foreach my $curiIn (@iInArray) {
	$curiIn *= 5;
	$tempfile = "foo_iIn_$curiIn.sp";
	
	open(IS, $filename);
	open(OS, ">$tempfile");
	while(<IS>){
		#s/^\.param i_in=(.*)$/.param i_in=$curiIn/g;
		#print OS $_;
		if($_ =~ /^\.param i_in=(.*)$/){
			print "found this";
			print OS ".param i_in=",$curiIn,"\n";
		} else {
			$_ =~ s/\r//g;
			print OS $_;
		}
	}
	close(OS);
	close(IS);

#	unlink($filename);
	#rename($tempfile, $filename);
}
