primitive    Lab1_UDP (tmp, A, D, B, C);

    output tmp;
    input A, B, C, D;
    table
     // A D B C : tmp
        0 0 0 0 : 0;
        0 0 0 1 : 0;
        0 0 1 0 : 0;
        0 0 1 1 : 1;
        0 1 0 0 : 0;
        0 1 0 1 : 0;
        0 1 1 0 : 0;
        0 1 1 1 : 1;
        1 0 0 0 : 0;
        1 0 0 1 : 0;
        1 0 1 0 : 0;
        1 0 1 1 : 1;
        1 1 0 0 : 1;
        1 1 0 1 : 1;
        1 1 1 0 : 1;
        1 1 1 1 : 1;

    endtable
endprimitive
