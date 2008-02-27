
use 5;
use ExtUtils::MakeMaker;

my $EUMM_VERSION = eval $ExtUtils::MakeMaker::VERSION;

WriteMakefile(
    NAME => 'Term::Size::ReadKey',
    VERSION_FROM => 'ReadKey.pm',
    ($] >= 5.005 ? (
        'ABSTRACT_FROM' => 'ReadKey.pm',
        'AUTHOR'        => 'Adriano R. Ferreira <ferreira@cpan.org>'
    ) : ()),
    ($EUMM_VERSION >= 6.30_01 ? (
        LICENSE => 'perl', 
    ) :()),

    PREREQ_PM     => {
        strict                => 0,
        Exporter              => 0,

        Term::ReadKey         => 0,
        Test::More            => 0, # build
    }, 

);


