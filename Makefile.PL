use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

eval { require 5.003_03 }
	or die <<EOL;
# This Module requires lvaluable subroutines, which are not avaiable
# in the version of Perl earlier than 5.6.0. Please upgrade!
EOL

eval { use Date::Calc 4.3 }
	or die <<EOL;
# This Module requires Date::Calc (or with modifications Date::Pcalc).
# Please install these before installing Date::Decade.
EOL

WriteMakefile (
	'NAME'		=> 'Date::Decade',
	'VERSION_FROM'	=> 'Decade.pm', # finds $VERSION
);
