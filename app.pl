use strict;
use warnings;
use Term::ReadKey;

my $attempts = 0;

while ($attempts < 3) {
    print "Username: ";
    my $username = <STDIN>;
    chomp $username;

    print "Password: ";
    ReadMode('noecho');
    my $password = <STDIN>;
    chomp $password;
    ReadMode('normal');
    print "\n";

    if ($username eq 'admin' && $password eq 'secret') {
        print "Access granted\n";
        last;
    } else {
        print "Access denied. Try again.\n";
        $attempts++;
    }
}

print "Maximum number of attempts reached\n" if $attempts >= 3;
