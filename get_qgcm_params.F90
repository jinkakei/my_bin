! create: 2015-09-30

program get_parameters 
!      use parameters
      implicit none

      integer, parameter:: nxto=960 ! temporary for test

      write(*,*) "call test of fortran progam from ruby script"

      write(*,*) 
      write(*,*) "nxto = ", nxto


end program get_parameters


