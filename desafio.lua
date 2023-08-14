--[[

Nome da Criatura     
Descrição
Som que Faz
Atributos
    Ataque
    defesa
    Vitalidade
    velocidade
    Inteligência
Habilidade
    Furtividade 
    Explosão
===================================================
/
/ CREEPER
/ Um mosntro muito sagaz que explode na sua cara.
/
/ Som: TSSSSSS
/
/ Atributos:
/   Ataque: ########00
/   Defesa: ###0000000
/   ...
/
/
===================================================


]]

-- Habibilitar UFT-8 no terminal 
os.execute("chcp 65001")

-- Criatura
local monsterName = "CREEPER"
local description = "Um monstro furtivo com temperamanto explosivo"
local emoji = "🎆"
local  sound = "TSSSSSS"
local favoriteTime = "Noturno"
local item = "Polvora"

-- Atributos
local attackAttribute = 10
local defenseAttribute = 1
local lifeAttribute = 5
local speedAttribute = 7
local inteligenceAttribute = 2

-- função que recebe um atributo e nos retorna uma barra de proguresso / texto
local function getProgressBar(attribute)
    local fullChar = "⬜"
    local emptyChar = "⬛"

    local result = ""
    for i = 1, 10, 1 do
            if i <= attribute then
                result = result .. fullChar
                -- Quadradinho cheio
            else
                result = result .. emptyChar
                -- Quadradinho vazio
            end
    end
    return result 
end
-- Cartão
print("===================================================")
print("| " .. monsterName)
print("| " .. description)
print("| ")
print("| Item: " .. item)
print("| som: " .. sound)
print("| Emoji Favorito: " .. emoji)
print("| Horário Favorito: " .. favoriteTime)
print("| ")
print("|     Atributos")
print("|     Ataque:      " .. getProgressBar(attackAttribute))
print("|     Defesa:      " .. getProgressBar(defenseAttribute))
print("|     Vida:        " .. getProgressBar(lifeAttribute))
print("|     Velocidade:  " .. getProgressBar(speedAttribute))
print("|     Inteligencia:" .. getProgressBar(inteligenceAttribute))
print("| ")
print("===================================================")