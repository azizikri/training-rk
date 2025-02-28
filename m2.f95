program m2
    implicit none

    ! All variable declarations must come first
    integer, dimension(5) :: numbers
    real, dimension(2,3) :: matrix
    integer :: i, j, age, score
    real :: pi, temperature
    integer :: count
    character(len=10) :: name
    logical :: is_student, is_passed, has_permission, can_graduate

    print *, "====== ARRAY ======"
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

    ! Contoh logika operator
    print *, "====== OPERATOR LOGIKA ======"

    ! Initialize values for demonstration
    age = 19
    score = 78
    temperature = 36.5
    is_student = .true.

    ! Logical operators: AND, OR, NOT
    is_passed = (score >= 70)
    has_permission = (age >= 18) .and. is_student
    can_graduate = is_passed .and. (temperature < 37.5)

    ! Output logical results
    print *, "Nilai:", score, "Lulus:", is_passed
    print *, "Umur:", age, "Mahasiswa:", is_student
    print *, "Punya izin:", has_permission

    ! Compound logical expressions
    print *, "Lulus ATAU Mahasiswa:", is_passed .or. is_student
    print *, "BUKAN Mahasiswa:", .not. is_student
    print *, "Bisa wisuda:", can_graduate

    ! If-else with logical operators
    if (is_passed .and. has_permission) then
        print *, "Status: Boleh mengikuti wisuda"
    else if (is_passed .and. (.not. has_permission)) then
        print *, "Status: Sudah lulus tapi belum memenuhi persyaratan"
    else if ((.not. is_passed) .and. has_permission) then
        print *, "Status: Belum lulus tapi sudah memenuhi persyaratan"
    else
        print *, "Status: Belum memenuhi persyaratan wisuda"
    end if

    print *, "====== FORMAT ======"
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
