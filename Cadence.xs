#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"
#include "string.h"
#include "itkDB.h"

MODULE = Cadence        PACKAGE = Cadence


MODULE = Cadence        PACKAGE = Cadence::DB

INCLUDE: include/DB.xsh

MODULE = Cadence        PACKAGE = Cadence::CellView

INCLUDE: include/CellView.xsh

MODULE = Cadence        PACKAGE = Cadence::BBox

INCLUDE: include/BBox.xsh
