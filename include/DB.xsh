void
Init()
    CODE:
        int argc = 1;
        char* argv[] = { "dbAccess" };

        if ( !dbInit(&argc, argv) ) {
          croak("Failed to Initalize Database");
        }


void
Exit()
    CODE:
        dbExit();

