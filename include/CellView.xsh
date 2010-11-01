SV* open(SV* lib, SV* cellname, SV* type, SV* mode)
    CODE:
        SV* id;
        SV* rv;
        dbCellViewId cvId;

        if ( !( cvId = dbOpenCellViewByType( SvPV_nolen(lib), SvPV_nolen(cellname),
                                             SvPV_nolen(type), NULL, SvPV_nolen(mode), NULL) ) ) {
            croak("Could not open schematic %s in library %s\n", SvPV_nolen(cellname), SvPV_nolen(lib));
        }
        rv = newSV(0);
        sv_setref_iv(rv, "Cadence::CellView", cvId);
        RETVAL = rv;
    OUTPUT:
        RETVAL

SV* cellname(SV* ref)
    CODE:
        char* cn;
        dbCellViewId cId;
        cId = (dbCellViewId)SvIV(SvRV(ref));

        if( dbIsCellViewId(cId) ) {
           cn = dbGetCellViewCellName(cId);
           RETVAL = newSVpv(cn, strlen(cn));
         }
        else {
           warn("%x is not a valid Cadence id", cId);
           RETVAL = &PL_sv_undef;
        }
    OUTPUT:
        RETVAL

SV* viewname(SV* ref)
    CODE:
        char* vn;
        dbCellViewId cId;
        cId = (dbCellViewId)SvIV(SvRV(ref));

        if( dbIsCellViewId(cId) ) {
           vn = dbGetCellViewViewName(cId);
           RETVAL = newSVpv(vn, strlen(vn));
         }
        else {
           warn("%x is not a valid Cadence id", cId);
           RETVAL = &PL_sv_undef;
        }
    OUTPUT:
        RETVAL

SV* path(SV* ref)
    CODE:
        char* p;
        dbCellViewId cId;
        cId = (dbCellViewId)SvIV(SvRV(ref));

        if( dbIsCellViewId(cId) ) {
           p = dbGetCellViewFullDirPath(cId);
           RETVAL = newSVpv(p, strlen(p));
         }
        else {
           warn("%x is not a valid Cadence id", cId);
           RETVAL = &PL_sv_undef;
        }
    OUTPUT:
        RETVAL

SV* mode(SV* ref)
    CODE:
        char* p;
        dbCellViewId cId;
        cId = (dbCellViewId)SvIV(SvRV(ref));

        if( dbIsCellViewId(cId) ) {
           p = dbGetCellViewMode(cId);
           RETVAL = newSVpv(p, strlen(p));
         }
        else {
           warn("%x is not a valid Cadence id", cId);
           RETVAL = &PL_sv_undef;
        }
    OUTPUT:
        RETVAL

SV* DBUperUU(SV* ref)
    CODE:
        double d;
        dbCellViewId cId;
        cId = (dbCellViewId)SvIV(SvRV(ref));

        if( dbIsCellViewId(cId) ) {
           d = dbGetCellViewDBUPerUU(cId);
           RETVAL = newSVnv(d);
         }
        else {
           warn("%x is not a valid Cadence id", cId);
           RETVAL = &PL_sv_undef;
        }
    OUTPUT:
        RETVAL


SV* UUname(SV* ref)
    CODE:
        char* p;
        dbCellViewId cId;
        cId = (dbCellViewId)SvIV(SvRV(ref));

        if( dbIsCellViewId(cId) ) {
           p = dbGetCellViewUserUnitName(cId);
           RETVAL = newSVpv(p, strlen(p));
         }
        else {
           warn("%x is not a valid Cadence id", cId);
           RETVAL = &PL_sv_undef;
        }
    OUTPUT:
        RETVAL


