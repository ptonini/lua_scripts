--
-- Created by IntelliJ IDEA.
-- User: ptonini
-- Date: 06/05/18
-- Time: 14:27
-- To change this template use File | Settings | File Templates.
--
math.randomseed(os.clock()*100000000000)

function gerarCPF()

    local n1 = math.random(0,9)
    local n2 = math.random(0,9)
    local n3 = math.random(0,9)
    local n4 = math.random(0,9)
    local n5 = math.random(0,9)
    local n6 = math.random(0,9)
    local n7 = math.random(0,9)
    local n8 = math.random(0,9)
    local n9 = math.random(0,9)

    local d1 = n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10

    d1 = d1 - math.floor(d1/11)*11

    if d1 < 2 then d1 = 0 else d1 = 11 - d1 end

    local d2 = d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11

    d2 = d2 - math.floor(d2/11)*11

    if d2 < 2 then d2 = 0 else d2 = 11 - d2 end

    return n1..n2..n3.."."..n4..n5..n6.."."..n7..n8..n9.."-"..d1..d2

end

for i=1,10,1 do

    print(gerarCPF())

end
