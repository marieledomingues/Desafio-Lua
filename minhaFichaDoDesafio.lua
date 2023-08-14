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
    Mordida
    Cospe bola de fogo
Fraqueza
    Magia Branca
    Magia Sagrada 
Drops
    Couro Infernal 
    Chama do inferno 
    Chave do mundo inferior
===================================================
/
/ Cérbero
/  É um monstruoso cão de três cabeças que guarda a entrada dos Portões do Mundo Inferior
/  Ao uivar esse ser consegue atordoar seus inimigos 
/ Som: Auuuuuu
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
local monsterName = "Cérbero"
local description = "Cão infernal que contem 3 cabeças e guarda a entrada dos Porões do Mundo Inferior"
local emoji = "🔥"
local sound = "Auuuuuu"
local favoriteTime = "Noturno"
local item = "Couro infernal, Chama do inferno e Chave do mundo inferior"

-- Fraqueza
local whiteMagicFragility = 4
local holyMagicFragility = 6

-- Atributos
local attackAttribute = 8
local defenseAttribute = 5
local lifeAttribute = 10
local speedAttribute = 5
local inteligenceAttribute = 4

-- função que recebe um atributo e nos retorna uma barra de proguresso / texto
local function getProgressBar(attribute)
    local fullChar = "❤️"
    local emptyChar = "🖤"

    local result = ""
    for i = 1, 10, 1 do
            if i <= attribute then
                result = result .. fullChar
                -- Coração Vermelho
            else
                result = result .. emptyChar
                -- Coração Preto
            end
    end
    return result 
end

local function getProgressBar(fragility)
    local fullChar = "⬜"
    local emptyChar = "⬛"

    local result = ""
    for i = 1, 10, 1 do
            if i <= fragility then
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
print("| som: " .. sound)
print("| Emoji Favorito: " .. emoji)
print("| Horário Favorito: " .. favoriteTime)
print("| Item: " .. item)
print("| ")
print("|     Atributos")
print("|     Ataque:      " .. getProgressBar(attackAttribute))
print("|     Defesa:      " .. getProgressBar(defenseAttribute))
print("|     Vida:        " .. getProgressBar(lifeAttribute))
print("|     Velocidade:  " .. getProgressBar(speedAttribute))
print("|     Inteligencia:" .. getProgressBar(inteligenceAttribute))
print("|     Fraqueza:    ")
print("|     Magia Branca".. getProgressBar(whiteMagicFragility))
print("|     Magia Sagrada"..getProgressBar(holyMagicFragility))
print("| ")
print("===================================================")