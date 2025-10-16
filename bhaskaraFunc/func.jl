function Bhaskara(a, b, c)
    Δ = b^2 -4*a*c
    if (Δ < 0)
        x1 = (-b + √(Δ + 0 * im)) / 2a
        x2 = (b + √(Δ + 0 * im)) / 2a

        return x1, x2
    end

    x1 = (-b + √(Δ)) / 2a
    x2 = (b + √(Δ)) / 2a
    
    return x1, x2
end
