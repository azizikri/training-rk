program m4
    implicit none

    real :: radius, area, circumference, x, y

    radius = 5.0
    x = 5.0
    y = 10.0

    call calculate_circle(radius, area, circumference)

    print '(A,F7.2)', "Radius: ", radius
    print '(A,F7.2)', "Area: ", area
    print '(A,F7.2)', "Circumference: ", circumference

contains
    subroutine calculate_circle(r, a, c)
        implicit none
        real, intent(in) :: r
        real, intent(out) :: a, c
        real, parameter :: pi = 3.14159

        a = pi * r**2
        c = 2.0 * pi * r
    end subroutine calculate_circle

    function average(a, b) result(avg)
        implicit none
        real, intent(in) :: a, b
        real :: avg

        avg = (a + b) / 2.0
    end function average

    function maximum(a, b) result(max_val)
        implicit none
        real, intent(in) :: a, b
        real :: max_val

        if (a > b) then
            max_val = a
        else
            max_val = b
        end if
    end function maximum
end program m4
