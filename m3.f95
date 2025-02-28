program m3
    implicit none

    integer :: score
    integer :: x, y
    integer :: day
    integer :: age
    logical :: has_id

    score = 85
    x = 5
    y = 10
    day = 3
    age = 20
    has_id = .true.

    print *, "====== 1. SIMPLE IF-ELSE STATEMENTS ======"
    if (score >= 90) then
       print *, "Nilai: A"
    else if (score >= 80) then
       print *, "Nilai: B"
    else if (score >= 70) then
       print *, "Nilai: C"
    else
       print *, "Nilai: D"
    end if

    print *, "====== 2. NESTED IF STATEMENTS ======"
    if (x > 0) then
        if (y > 0) then
            print *, "x dan y keduanya positif"
        else
            print *, "x positif, tapi y tidak"
        end if
    else
      print *, "x tidak positif"
    end if

    print *, "====== 3. CASE STATEMENTS ======"
    select case (day)
        case (1)
            print *, "Senin"
        case (2)
            print *, "Selasa"
        case (3)
            print *, "Rabu"
        case (4)
            print *, "Kamis"
        case (5)
            print *, "Jumat"
        case (6:7)
            print *, "Akhir Pekan"
        case default
            print *, "Hari tidak valid"
    end select

    print *, "====== 4. LOGICAL COMBINATION ======"
    if (age >= 18 .and. has_id) then
        print *, "Boleh masuk"
    else
        print *, "Tidak boleh masuk"
    end if

end program m3
