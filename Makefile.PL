use 5.010000;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Cadence',
    VERSION_FROM      => 'lib/Cadence.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Cadence.pm', # retrieve abstract from module
       AUTHOR         => 'Mark Anderson <anderm7@rpi.edu>') : ()),
    LIBS              => "-lddpiServices_sh -lddpi_sh -lil_sh -lnmpil_sh -lcls_sh -lgdm_sh -lgdmil_sh -lxcf_sh -l hdbcla_sh -lpcdbclaNoOA_sh -lccp_sh -lddliteServices_sh -lddlite_sh -lpcdbNoOA_sh -lckp_sh -ldataReg_sh -lddAccess_sh -ldsCat_sh -lnmp_sh -lcla_sh -lmpsc_sh -lsman_sh -lmpss_sh -lmpi_sh -llbss_sh -llbsc_sh -lvirtuos_sh -lfastt_sh -lcls_sh -lcdsCommon_sh -lenv_sh -lplotCommon_sh -lem_sh -lhdb_sh -lems_sh -lm -lnsl -ldl", # e.g., '-lm'
    LDDLFLAGS         => '/cad/cds/ic613/tools/itkDB/lib/itkDB_pic.a -shared -O2 -L/cad/cds/ic613/oa_v22.04.044/lib/linux_rhel30_gcc411_32/opt -L/cad/cds/ic614/tools/itkDB/lib -L/cad/cds/ic613/tools/lib -L/usr/local/lib',
    DEFINE            => '', # e.g., '-DHAVE_SOMETHING'
    INC               => '-I. -I/cad/cds/ic613/tools/itkDB/include', # e.g., '-I. -I/usr/include/other'
    # CC		      => 'gccv322',	
);
