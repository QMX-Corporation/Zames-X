#!/usr/bin/env perl

# SPDX-License-Identifier: GPL-2.0-only
# Zames-X Global Editor Configuration Matrix
# Copyright (C) 2026 QMX Corporation


use strict;
use warnings;
use Term::ANSIColor;

# 1. Captures the argument passed for Terminal
if (scalar(@ARGV) == 0) {
    print STDERR "Usage: perl Tools/checkpatch.pl <file>\n";
    exit 1;
}

my $filename = shift @ARGV;
unless (-e $filename) {
    print STDERR color('red'), "Error: ", color('reset'), "File '$filename' not found.\n";
    exit 1;
}

# 2. The Loop for read the Shader
open(my $fh, "<", $filename) or die "Could not open file '$filename': $!\n";

my $line_number = 0;
my $errors = 0;
my $warnings = 0;
my $instance_open = 0;

while (my $line = <$fh>) {
    $line_number++;
    
    # Remove trailing newline characters for clean mapping length analysis
    my $clean_line = $line;
    $clean_line =~ s/\r?\n$//;

    # -------------------------------------------------------------------------
    # RULE 1: WARNING - Line Length enforcement (Standard 100 character threshold)
    # -------------------------------------------------------------------------
    if (length($clean_line) > 100) {
        print color('yellow'), "WARNING: ", color('reset'), 
              "line $line_number exceeds 100 characters layout limit\n";
        $warnings++;
    }

    # -------------------------------------------------------------------------
    # RULE 2: ERROR - Invalid comment token usage (Block // or /* styles)
    # -------------------------------------------------------------------------
    if ($clean_line =~ m/\/\/|\/\*|\*\//) {
        print color('red'), "ERROR: ", color('reset'), 
              "line $line_number uses invalid C-style comment. Use '#' instead.\n";
        $errors++;
    }

    # -------------------------------------------------------------------------
    # RULE 3: Tracking structural bounds for INSTANCE syntax blocks (.klsl)
    # -------------------------------------------------------------------------
    if ($clean_line =~ m/\bINSTANCE:/) {
        $instance_open++;
    }
    if ($clean_line =~ m/\bendINSTANCE;/) {
        $instance_open--;
    }

    # -------------------------------------------------------------------------
    # RULE 4: WARNING - Spaces around assignment operator verification
    # -------------------------------------------------------------------------
    if ($clean_line =~ m/\S=\S|\S=\s|\s=\S/ && $clean_line !~ m/<=|>=|==|!=/) {
        if ($clean_line !~ m/^\s*#/) {
            print color('yellow'), "WARNING: ", color('reset'), 
                  "line $line_number missing balanced spaces around '=' operator\n";
            $warnings++;
        }
    }
}

close($fh);

# -----------------------------------------------------------------------------
# 3. Final Validation Bounds Verification Phase
# -----------------------------------------------------------------------------
if ($instance_open != 0) {
    print color('red'), "ERROR: ", color('reset'), 
          "Structural parsing mismatch. 'INSTANCE:' block left unclosed at EOF.\n";
    $errors++;
}

# Print summary with appropriate colors based on results
print "\nTotal Audit Results: ";
if ($errors > 0) {
    print color('red'), "$errors errors", color('reset');
} else {
    print "$errors errors";
}
print ", ";
if ($warnings > 0) {
    print color('yellow'), "$warnings warnings", color('reset');
} else {
    print "$warnings warnings";
}
print " found.\n";

# Terminate with failure if critical syntax defects exist
if ($errors > 0) {
    exit 1;
}

exit 0;