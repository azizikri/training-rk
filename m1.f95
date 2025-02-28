program hello_world
    implicit none
    integer :: i
    real :: x
    character(len=20) :: name
    logical :: is_active
    complex :: z

    ! Initialize variables
    i = 10
    x = 3.14159
    name = "Zikri Endisyah Munandar"
    is_active = .true.
    z = (2.0, 3.0)

    print *, "Hello, World!"
    print *, "Rekayasa Komputasional!"

    ! Menampilkan nilai variabel
    print *, "Integer:", i
    print *, "Real:", x
    print *, "Character:", name
    print *, "Logical:", is_active
    print *, "Complex:", z
    print *, "Real part:", real(z)
    print *, "Imaginary part:", aimag(z)

end program hello_world
