Crossover<-function(numberofchromo,nuberofpower,matrixChromosoma){
  NumberOfChromo=numberofchromo
  NumberOfPower=nuberofpower
  Chromosoma=matrixChromosoma
  itogvpopul=NumberOfChromo
  detei=NumberOfChromo
  for(i in 1:NumberOfChromo){
    code_1=0
    code_2=0
    
    
    chrom_1=sample(x = 1:NumberOfChromo, size = 1, replace = FALSE)
    w=1:NumberOfChromo
    
   # print("/////")
  #   print(paste0("i:=",i))
    # print(paste0("Chrom_1:",chrom_1))
     #print(Chromosoma[chrom_1,])
     #print(chrom_1)
    
    
    chrom_2=sample(w[w!=chrom_1], size = 1, replace = FALSE)
    ostgen=0
    # print( paste0("Chrom_2:",chrom_2))
    # print(Chromosoma[chrom_2,])
      #print(chrom_2)
    
    for(a in 1:NumberOfPower){
      good=1
      for(q in 1:NumberOfPower){
        if(Chromosoma[chrom_1,a]==Chromosoma[chrom_2,q])
          good=0
      }
      if(good==1)
      {
        ostgen=ostgen+1
        code_1[ostgen]=Chromosoma[chrom_1,a]
      }
      
    }
    
    # Создадим код первой хромосомы для скрещивания
    ostgen=0
    ku=0
    for(a in 1:NumberOfPower){
      good=1
      for(q in 1:NumberOfPower){
        if(Chromosoma[chrom_1,a]==Chromosoma[chrom_2,q])
        {# print(paste0("a",a))
          #print(paste0("Chromosoma[chrom_1,a]:=",Chromosoma[chrom_1,a]))
         # print(paste0("Chromosoma[chrom_2,a]:=",Chromosoma[chrom_2,q]))
          good=0
        }
      }
      if(good==1){
        ostgen=ostgen+1
        code_1[ostgen]=Chromosoma[chrom_1,a]
       # print(paste0("code_1[ostgen]:=",code_1[ostgen]))
      }
    }
  #  print("code_1:")
  #  print(code_1)
    
    # Создадим код второй хромосомы для скрещивания
    ostgen=0
    ku=0
    kogoubrali=0
    for(a in 1:NumberOfPower){
      good=1
      for(q in 1:NumberOfPower){
        if(Chromosoma[chrom_2,a]==Chromosoma[chrom_1,q])
          good=0
      }
      if(good==1){
        ostgen=ostgen+1
        code_2[ostgen]=Chromosoma[chrom_2,a]
      }
      else
      {
        ku=ku+1
        kogoubrali[ku]=Chromosoma[chrom_2,a]
      }
    }
   # print("code_2:")
   # print(code_2)
   # print(paste0("ku:=",ku))
    #print(paste0("ostgen:=",ostgen))
    
    if(ku!=0){
    for(f in 1:ku){
      code_1[ostgen+f]=kogoubrali[f]
      code_2[ostgen+f]=kogoubrali[f]
    }}
    
    
    
    
    if(ostgen>2)
    {
      detei=detei+1;
      #Скрещиваем
      #Генерирем точку разреза
      tochkarazreza = sample(x = 1:ostgen, size = 1, replace = FALSE)
      
       #print(paste0("tochkarazreza:=",tochkarazreza))
      
      # print(tochkarazreza)
      if(tochkarazreza==ostgen)
        tochkarazreza=tochkarazreza-1
      
      # делаем первого потомка'
      # print("делаем первого потомка")
      Chromosoma=rbind(Chromosoma,NA)
      for(s in 1:NumberOfPower){
        if(s<=tochkarazreza)
         { Chromosoma[detei,s]=code_1[s]
      #  print(paste0("Chromosoma[detei,s]:Code1=",Chromosoma[detei,s]))
         }
        else
        {  Chromosoma[detei,s]=code_2[s]
       #  print(paste0("Chromosoma[detei,s]:Code2=",Chromosoma[detei,s]))
        }
        
      }
      detei=detei+1
      
     # print("делаем второго потомка")
      # делаем второго потомка
      Chromosoma=rbind(Chromosoma,NA)
      for(s in 1:NumberOfPower){
        if(s<=tochkarazreza)
         { Chromosoma[detei,s]=code_2[s]
       # print(Chromosoma[detei,s])
         }
        else
         { Chromosoma[detei,s]=code_1[s]
        #print(paste0("Chromosoma[detei,s]:=",Chromosoma[detei,s]))
         }
      }
      
      
    }
    
    itogvpopul=detei
    
  }
  return(Chromosoma)
  
}

