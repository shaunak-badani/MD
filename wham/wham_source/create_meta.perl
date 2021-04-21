#!/usr/bin/perl -w
use Cwd;
$wd=cwd;

print "Preparing meta file\n";

$name="meta.dat";
$incr=3;
$force=0.12184;

&prepare_input();

exit(0);

sub prepare_input() {
    
    $dihed=0;
    while ($dihed <= 180) { 
      print "Processing dihedral: $dihed\n";
      &write_meta();
      $dihed += $incr;
    }
}

sub write_meta {
    open METAFILE,'>>', "$name";
    print METAFILE <<EOF;
../dat_files/dihedral_$dihed.dat $dihed.0 $force
EOF
    close MDINFILE;
}

