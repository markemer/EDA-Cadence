
SV* new(SV* x1, SV* y1, SV* x2, SV* y2)
    CODE:
      dbBBox box;
      SV* rv;

      dbFillBBox(&box,SvNV(x1),SvNV(y1),SvNV(x2),SvNV(y2));

      rv = newSV(0);
      sv_setref_iv(rv, "Cadence::BBox", &box);
      RETVAL = rv;
    OUTPUT:
      RETVAL











