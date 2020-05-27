Fitness<-function(NumberOfChromosoma,NumberOfPower,NumberOfConsumers,power,MatrixPower,chromosoma,MatrixConsumer){
  
  #Parents=0
  Parents<-matrix(nrow=NumberOfChromosoma, ncol=2)
  colnames(Parents)<-c("Number","fitnessvalue")
  
  ParentsCode=0
  znach=0
  znach1=0
  ForPlase<-matrix(nrow=NumberOfPower, ncol=3)
  colnames(ForPlase)<-c("p","x","y")
  for(j in 1:NumberOfChromosoma){
    Parents[j,1]=j
    # Создаем массив размещения генераторов для закрепления
    
    
    for(i in 1:NumberOfPower){
      ForPlase[i,1]=power
      ForPlase[i,2]=MatrixPower[chromosoma[j,i],2]#x
      ForPlase[i,3]=MatrixPower[chromosoma[j,i],3]#y
      # print(paste0("x:=",ForPlase[i,2]))
      # print(paste0("y:=",ForPlase[i,3]))
    }
    good=0
    for(i in 1:NumberOfConsumers){
      znach = 1000000000
      # print(paste0("i:=",i))
      znach1=znach
      pointg=0
      for(k in 1:NumberOfPower){
        
        #  print("\\\\\\")
        #  print(paste0("ForPlase[k,2]:=",ForPlase[k,2]))
        #  print(paste0("MatrixConsumer[i,2]:=",MatrixConsumer[i,2]))
        #  print(paste0("ForPlase[k,3]:=",ForPlase[k,3]))
        #   print(paste0("MatrixConsumer[i,3]:=",MatrixConsumer[i,3]))
        if(ForPlase[k,1]>MatrixConsumer[i,4]){
          znach1=sqrt((ForPlase[k,2]-MatrixConsumer[i,2])^2+(ForPlase[k,3]-MatrixConsumer[i,3])^2)*MatrixConsumer[i,4]
          znach1=(znach1)
          #  print(paste0("znach1 DO:=",znach1))
          # print(paste0("znach DO:=",znach))
          if(znach1<znach){
            znach=znach1
            pointg=k
          }
          # print(paste0("znach1 Posle:=",znach1))
          #print(paste0("znach Posle:=",znach))
        }
      }
      
      if (pointg==0){
        pointg=1
        znach=10000000000000000
        #(znach)
        
      }
      #print(paste0("znach Posle:=",znach))
      good=good+znach
      #print(paste0("good:=",good))
      
      # z="jgjgj"
      
      
      
      ForPlase[pointg,1]=ForPlase[pointg,1]-MatrixConsumer[pointg,4]
      # print("Процесс закр ФИТ_Точка генерации_Остаток мощности_Мощность привязанного потребителя")
      #print("Процесс закр ФИТ\Точка генерации\Остаток мощности\Мощность привязанного потребителя")
      # print(paste0("fit:=",fit))
      # print(pointg)
      # print(ForPlase[pointg,1])
      # print(MatrixConsumer[pointg,4])
      
      
    }
    # print(paste0("good J:=",good))
    
    
    #print(paste0("fit:=",fit))
    #Parents[j]=fit
   # Parents[j,2]=good-90000000000000000
    Parents[j,2]=good
    #print(paste0("Parents:=",Parents[j,2]))
    
    
  }
  
  # print(Parents)
  
  return(Parents)
}
