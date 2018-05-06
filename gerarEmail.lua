--
-- Created by IntelliJ IDEA.
-- User: ptonini
-- Date: 06/05/18
-- Time: 14:49
-- To change this template use File | Settings | File Templates.
--
function gerarEmail()

    math.randomseed(os.clock()*100000000000)

    local chars = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'}

    local string = ''

    for i=0, 9, 1 do

        string = string..chars[math.random(1,26)]

    end

    return string..'@teste.com'

end

for i=1,10,1 do

    print(gerarEmail())

end
