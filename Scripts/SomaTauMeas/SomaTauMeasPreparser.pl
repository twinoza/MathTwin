#!/usr/bin/perl

# This program will take data extracted from the Hspice simulation of tau fits 
# in the Soma circuit and will preparse the data to make it easy and quick to 
# port to the Mathematica script that will quickly calculate ptau using this data.
use Data::Dumper;

print "Soma Tau Simulation Measurement Preparser\n";
print "-----------------------------------------\n";

my @fileList = glob("*.mres");
#my @iInVals;

# Create Header Values for the output matrix
my @tauVals = (f, 0.001, 0.002, 0.005, 0.010, 0.015, 0.020, 0.025);
my @outMat = \@tauVals;


# Add data into the table with the first column as the i_in value
foreach my $fileName (@fileList) {
	my @tempRow;
	print "Filename:\t$fileName --- ";

  ($tmpIIn) = $fileName =~ /SomaTauMeasurements_iin([\.\d]+)_tauSweep\.mres/;
#	push @iInVals, "$tmpIIn ";
	print "i_in: ", $tmpIIn, "\n";
	push @tempRow, "$tmpIIn";

	open DATA, "<$fileName" || die "Couldn't open $fileName: $!";
	for $line (<DATA>) {
		#	print $line;
		if (($curFiringRate) = $line =~ /^point\d+:\s+\([\.\d]+, ([\.\d]+).*/) {
			#print "-- $curFiringRate\n";
			push @tempRow, "$curFiringRate ";
		}
	}
	close DATA;
	push @outMat, \@tempRow;
}

open OUTFILE, ">SomaSimTauData.txt" || die "Couldn't open file SomaTauData.txt, $!";
foreach my $row(@outMat) {
	foreach my $val(@$row) {
#		print $val, "\t";
		print OUTFILE $val, "\t";
	}
#	print "\n";
	print OUTFILE "\n";
}
close OUTFILE;

system('perl -pli -e "s/^\s+|\s*$//" SomaSimTauData.txt');

closedir DIR;
