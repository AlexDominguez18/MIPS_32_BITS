### Oscar Alejandro Dominguez Duran ###

def main():
    file1 = open("instrucciones.txt", mode="r")
    for linea in file1:    
        instruccion = []
        print(linea)
        input()
        if("add" in linea and "addi" not in linea):
            instruccion.append("000000")
            numero_b = replaceSymbols(linea)
            for j in numero_b:
                instruccion.append(j)
            instruccion.append("00000100000")
            
        elif("sub" in linea):
            instruccion.append("000000")
            numero_b = replaceSymbols(linea)
            for j in numero_b:
                instruccion.append(j)
            instruccion.append("00000100010")
        
        elif("and" in linea and "andi" not in linea):
            instruccion.append("000000")
            numero_b = replaceSymbols(linea)
            for j in numero_b:
                instruccion.append(j)
            instruccion.append("00000100100")

        elif("or" in linea and "x" not in linea and "i" not in linea):
            instruccion.append("000000")
            numero_b = replaceSymbols(linea)
            for j in numero_b:
                instruccion.append(j)
            instruccion.append("00000100101")

        elif("mult" in linea):
            instruccion.append("000000")
            numero_b = replaceSymbols(linea)
            for j in numero_b:
                instruccion.append(j)
            instruccion.append("00000011001")

        elif("div" in linea):
            instruccion.append("000000")
            numero_b = replaceSymbols(linea)
            for j in numero_b:
                instruccion.append(j)
            instruccion.append("00000011010")

        elif("xor" in linea and "xori" not in linea):
            instruccion.append("000000")
            numero_b = replaceSymbols(linea)
            for j in numero_b:
                instruccion.append(j)
            instruccion.append("00000100110")

        elif("addi" in linea):
            instruccion.append("001000")
            numero_b = replaceSymbols(linea)
            for j in numero_b:
                instruccion.append(j)

        elif("ori" in linea):
            instruccion.append("001101")
            numero_b = replaceSymbols(linea)
            for j in numero_b:
                instruccion.append(j)
        
        elif("andi" in linea):
            instruccion.append("001100")
            numero_b = replaceSymbols(linea)
            for j in numero_b:
                instruccion.append(j)
        
        elif("xori" in linea):
            instruccion.append("001110")
            numero_b = replaceSymbols(linea)
            for j in numero_b:
                instruccion.append(j)

        elif("lw" in linea):
            instruccion.append("100011")
            numero_b = replaceSymbols(linea)
            for j in numero_b:
                instruccion.append(j)

        elif("sw" in linea):
            instruccion.append("101011")
            numero_b = replaceSymbols(linea)
            for j in numero_b:
                instruccion.append(j)
        
        elif("slt" in linea and "i" not in linea):
            print("AQUI PUTO")
            input()
            instruccion.append("000000")
            numero_b = replaceSymbols(linea)
            for j in numero_b:
                instruccion.append(j)

        elif("slti" in linea):
            instruccion.append("001010")
            numero_b = replaceSymbols(linea)
            for j in numero_b:
                instruccion.append(j)
        
        elif("beq" in linea):
            instruccion.append("000100")
            numero_b = replaceSymbols(linea)
            for j in numero_b:
                instruccion.append(j)

        elif("bne" in linea):
            instruccion.append("000101")
            numero_b = replaceSymbols(linea)
            for j in numero_b:
                instruccion.append(j)

        elif("j" in linea):
            instruccion.append("000010")
            numero_b = replaceSymbols(linea)
            for j in numero_b:
                instruccion.append(j)

        else:
            pass

        x = ""
        for j in instruccion:
            x = (x + j)
        
        y=[]
        while x:
            y.append(x[:8])
            x = x[8:]
        
        for j in y:
            with open("binario.txt", mode="a") as text_file:
                text_file.write(j + "\n")
    
def replaceSymbols(linea):
    linea_codigo = linea.split(",")
    i=0
    array = []
    for j in linea_codigo:
        linea_num = j.replace("$", "")
        if("#" in j):
            linea_num = linea_num.replace("#", "")

        if("add" in linea_num and "i" not in linea):
            linea_num = linea_num.replace("add", "")
            tipo = "R"
        
        elif("sub" in linea_num):
            linea_num = linea_num.replace("sub", "")
            tipo = "R"
        
        elif("and" in linea_num and "i" not in linea):
            linea_num = linea_num.replace("and", "")
            tipo = "R"

        elif("or" in linea_num and "x" not in linea_num and "i" not in linea):
            linea_num = linea_num.replace("or", "")
            tipo = "R"
        
        elif("mult" in linea_num):
            linea_num = linea_num.replace("mult", "")
            tipo = "R"

        elif("div" in linea_num):
            linea_num = linea_num.replace("div", "")
            tipo = "R"

        elif("xor" in linea_num):
            linea_num = linea_num.replace("xor", "")
            tipo = "R"

        elif("addi" in linea_num):
            linea_num = linea_num.replace("addi", "")
            tipo = "I"
        
        elif("ori" in linea_num):
            linea_num = linea_num.replace("ori", "")
            tipo = "I"
        
        elif("andi" in linea_num):
            linea_num = linea_num.replace("andi", "")
            tipo = "I"
        
        elif("xori" in linea_num):
            linea_num = linea_num.replace("xori", "")
            tipo = "I"

        elif("lw" in linea_num):
            linea_num = linea_num.replace("lw", "")
            tipo = "I"

        elif("sw" in linea_num):
            linea_num = linea_num.replace("sw", "")
            tipo = "I"
        
        elif("slt" in linea_num and "slti" not in linea_num):
            linea_num = linea_num.replace("slt", "")
            tipo = "R"
        
        elif("slti" in linea_num):
            linea_num = linea_num.replace("slti", "")
            tipo = "I"
        
        elif("beq" in linea_num):
            linea_num = linea_num.replace("beq", "")
            tipo = "I"
        
        elif("bne" in linea_num):
            linea_num = linea_num.replace("bne", "")
            tipo = "I"
        
        elif("j" in linea_num):
            linea_num = linea_num.replace("j", "")
            tipo = "J"

        else:
            pass

        numero_b = binario(linea_num, i, tipo)
        array.append(numero_b)
        i+=1

    return array

def binario(linea_num, i, tipo):
    if(int(linea_num) >= 0):
        numero = int(linea_num)
        numero2 = bin(numero)
        numero_b = str(numero2)
        numero_b = numero_b.replace("0b","")
        if(tipo == "R"):
            if(i < 3):
                while(len(numero_b) < 5):
                    numero_b = ("0" + numero_b)
            else:
                pass

        elif(tipo == "I"):
            if(i < 2):
                while(len(numero_b) < 5):
                    numero_b = ("0" + numero_b)
            else:
                while(len(numero_b) < 16):
                    numero_b = ("0" + numero_b)
        
        elif(tipo == "J"):
            while(len(numero_b) < 26):
                numero_b = ("0" + numero_b)

        return numero_b
    
    elif(int(linea_num) < 0):
        numero = abs(int(linea_num))
        numero_b = (numero ^ 65535) + 1
        numero_b = bin(numero_b)
        numero_b = str(numero_b)
        numero_b = numero_b.replace("0b","")
        return numero_b      

    else:
        if(i<2):
            numero = int(linea_num)
            numero2 = bin(numero)
            numero_b = str(numero2)
            numero_b = numero_b.replace("0b","")
            while(len(numero_b) < 5):
                    numero_b = ("0" + numero_b)
        
        else:
            numero_b = str(linea_num)
        
        return numero_b

#Llamada a la funcion main
main()