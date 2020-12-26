Quadratic Equation Calculator (Fortran Code)
*Program to compute for the roots of the quadratic equation
*(c)2001 by Marc Christian Saribay
*Compile Date: August 7, 2001

c     Declare variables
      REAL A,B,C,DISC,X1,X2
      INTEGER OK

c     Main Program
      PRINT*,'PROJECT 8 (Roots of Quadratic Equation)'
      PRINT*,'(c)2001 by Marc Christian Saribay (I-1L)'
10    PRINT*,'Enter value for A'
      READ*,A
      PRINT*,'Enter value for B'
      READ*,B
      PRINT*,'Enter value for C'
      READ*,C
      PRINT*,'A = ',A                  !Display values for confirmation
      PRINT*,'B = ',B
      PRINT*,'C = ',C
20    PRINT*,'Are these values ok? (1-Yes/2-No)'
      READ*,OK
      IF(OK.EQ.1)THEN
        GOTO 30
      ELSEIF(OK.EQ.2)THEN
        GOTO 10
      ELSE
        PRINT*,'Invalid Entry!'
        GOTO 20
      ENDIF
30    IF(A.EQ.0)THEN
        IF(B.EQ.0)THEN
          PRINT*,'Invalid Equation!'
        ELSE
          X1=(-C)/B
          PRINT*,'Linear Equation'
          PRINT*,'X = ',X1
        ENDIF
      ELSE
        DISC=(B**2)-(4*A*C)
        IF(DISC.EQ.0)THEN
          X1=(-B)/(2*A)
          PRINT*,'Quadratic Equation (1 real root)'
          PRINT*,'X = ',X1
        ELSEIF(DISC.GT.0)THEN
          X1=((-B)+SQRT(DISC))/(2*A)
          X2=((-B)-SQRT(DISC))/(2*A)
          PRINT*,'Quadratic Equation (2 real roots)'
          PRINT*,'X = ',X1
          PRINT*,'X = ',X2
        ELSE
          X1=(-B)/(2*A)
          X2=(SQRT(ABS(DISC)))/(2*A)
          PRINT*,'Quadratic Equation (2 imaginary roots)'
          PRINT*,'X = ',X1,' + ',X2,'i'
          PRINT*,'X = ',X1,' - ',X2,'i'
        ENDIF
      ENDIF
40    PRINT*,'Try Again (1-Yes/2-No)'  !Repeat inputs
      READ*,OK
      IF(OK.EQ.1)THEN
        GOTO 10
      ELSEIF(OK.EQ.2)THEN
        GOTO 50
      ELSE
        PRINT*,'Invalid Entry!'
        GOTO 40
      ENDIF
50    PRINT*,'Thanks for using my program!'
      END