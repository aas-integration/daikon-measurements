#!/usr/bin/env perl
use strict;
use warnings;

# perl script to count the number of invariants in a 'run_dyntrace' log file

my $counting = 0;
my $inv_count = 0;
my $in_daikon = 0;
my $test_number = 0;
my @fields;

    while (<>) {
        chomp;
        @fields = split / /;
        if ($in_daikon) {
            if (@fields == 0) {
                # do nothing for a blank line
            } elsif ($fields[0] eq "Running") {
                if ($in_daikon != 2) {
                    # oops - looks like daikon failed
                    print "test case ", $test_number, ": failed\n";
                    $in_daikon = 0;
                } else {
                    $in_daikon = 3; # start of second daikon run 
                }
            } elsif ($fields[0] eq "Exiting") {
                # end of daikon output
                print "test case ", $test_number, ": ", $inv_count, " invariants found\n";
                $in_daikon = 2;  # now look for total number of possible invariants
            } elsif ((length($fields[0]) > 10) && (substr($fields[0],1,5) eq "=====")) {
                # daikon invariants separator line 
                $counting = 1;
            } elsif ((@fields > 2) && ($fields[1] eq "invariants") && ($fields[2] eq "total")) {
                print $fields[0], " total possible invariants\n";
                $in_daikon = 0;
            } else {
                # either an invariant or a warning prior to first invariant
                if ($counting) {$inv_count++;}
            }
        } else {
# (debug check)  if (@fields > 2) { print scalar @fields . " " . $fields[0] . " ". $fields[1] . " " . $fields[2] . "\n";}
            # check to see if this is the start of a daikon.Daikon execution
            # the check for "-Xmx4G" is a bit of a hack, all other tools use "3G"
            if ((@fields >= 4) && ($fields[0] eq "Running") && ($fields[2] eq "-Xmx4G")) {
                $in_daikon = 1;
                $counting = 0;
                $inv_count = 0;
                $test_number++;
            }
        }
    }    
    if ($in_daikon) {
        # oops - looks like daikon failed
        print "test case ", $test_number, ": failed\n";
    }
