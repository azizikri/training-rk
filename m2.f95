program m2
    implicit none

    ! All variable declarations must come first
    integer, dimension(5) :: numbers
    real, dimension(2,3) :: matrix
    integer :: i, j
    real :: pi
    integer :: count
    character(len=10) :: name

    ! Mengisi array 1D
    numbers = [1, 2, 3, 4, 5]

    ! Mengisi array 2D
    do i = 1, 2
        do j = 1, 3
            matrix(i,j) = i + j
        end do
    end do

    ! Mencetak array 1D
    print *, "Array 1D:", numbers

    ! Mencetak array 2D
    print *, "Array 2D:"
    do i = 1, 2
       print *, matrix(i,:)
    end do

    ! Initialize format specifier variables
    pi = 3.14159265
    count = 1000
    name = "Zikri"

    ! Format dasar
    print *, "Pi =", pi

    ! Format yang ditentukan
    print '(A,F8.5)', "Pi = ", pi
    print '(A,I6)', "Count = ", count
    print '(A,A)', "Language: ", name

    ! Format dengan variabel
    write(*,'(A,F10.7)') "Pi dengan 7 desimal: ", pi

end program m2
