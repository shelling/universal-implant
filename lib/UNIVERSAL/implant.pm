package UNIVERSAL::implant;
# ABSTRACT: UNIVERSAL Class::Implant

use 5.008008;
use strict;
use warnings;

our $VERSION = '0.01_01';

BEGIN { 
  require UNIVERSAL;
  require Class::Implant;
}

package UNIVERSAL;

sub implant {
  my $options = ( ref($_[-1]) eq "HASH" ? pop(@_) : {} );
  my ($module, @class) = @_;
  $options->{into} = $module;
  Class::Implant::implant(@class, $options);
}

1;

=head1 SYNOPSIS

  use UNIVERSAL::implant;
  # require only once

=head1 DESCRIPTION



=cut
