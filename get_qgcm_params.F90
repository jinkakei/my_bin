! create: 2015-09-30

program get_parameters 
      use parameters
      implicit none
! this codes made by gen_get_qgpara.rb
!   match indent: select lines (Shift + V) -> type =
      write(*,*) 
      write(*,*) "nxto = ", nxto
      write(*,*) "nyto = ", nyto
      write(*,*) "nxpo = ", nxpo
      write(*,*) "nypo = ", nypo
      write(*,*) "nlo = ", nlo
      write(*,*) "dxo = ", dxo
      write(*,*) "gpoc = ", gpoc
      write(*,*) "hoc = ", hoc

end program get_parameters


