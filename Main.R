source("Crossover.R")
source("Fitness.R")
NumberOfConsumers=50

MatrixConsumer<-matrix(nrow=NumberOfConsumers, ncol=4)
colnames(MatrixConsumer)<-c("Code","x","y","Power")
MatrixConsumer[,1]=1:NumberOfConsumers

MatrixConsumer[1,2]=0
MatrixConsumer[1,3]=300
MatrixConsumer[1,4]=65

MatrixConsumer[2,2]=10
MatrixConsumer[2,3]=290
MatrixConsumer[2,4]=65

MatrixConsumer[3,2]=15
MatrixConsumer[3,3]=290
MatrixConsumer[3,4]=137

MatrixConsumer[4,2]= 70
MatrixConsumer[4,3]=295
MatrixConsumer[4,4]=129.8

MatrixConsumer[5,2]= 100
MatrixConsumer[5,3]= 295
MatrixConsumer[5,4]= 116.6

MatrixConsumer[6,2]= 75
MatrixConsumer[6,3]= 240
MatrixConsumer[6,4]= 129.8

MatrixConsumer[7,2]= 75
MatrixConsumer[7,3]= 210
MatrixConsumer[7,4]= 59.7

MatrixConsumer[8,2]= 105
MatrixConsumer[8,3]= 210
MatrixConsumer[8,4]= 129.8

MatrixConsumer[9,2]=105
MatrixConsumer[9,3]=165
MatrixConsumer[9,4]=123.9

MatrixConsumer[10,2]= 105
MatrixConsumer[10,3]=120
MatrixConsumer[10,4]=91.8

MatrixConsumer[11,2]= 480
MatrixConsumer[11,3]=390
MatrixConsumer[11,4]=276

MatrixConsumer[12,2]= 300
MatrixConsumer[12,3]=345
MatrixConsumer[12,4]=165.3

MatrixConsumer[13,2]= 390
MatrixConsumer[13,3]=300
MatrixConsumer[13,4]=283.6

MatrixConsumer[14,2]= 465
MatrixConsumer[14,3]=285
MatrixConsumer[14,4]=156

MatrixConsumer[15,2]= 510
MatrixConsumer[15,3]=420
MatrixConsumer[15,4]=220.4

MatrixConsumer[16,2]=405
MatrixConsumer[16,3]=150
MatrixConsumer[16,4]=165

MatrixConsumer[17,2]=240 
MatrixConsumer[17,3]=105
MatrixConsumer[17,4]=146

MatrixConsumer[18,2]= 315
MatrixConsumer[18,3]=145
MatrixConsumer[18,4]=156

MatrixConsumer[19,2]= 270
MatrixConsumer[19,3]=55
MatrixConsumer[19,4]=328.5

MatrixConsumer[20,2]= 630
MatrixConsumer[20,3]=345
MatrixConsumer[20,4]=165.3

MatrixConsumer[21,2]= 585
MatrixConsumer[21,3]=300
MatrixConsumer[21,4]=165.3

MatrixConsumer[22,2]= 620
MatrixConsumer[22,3]=285
MatrixConsumer[22,4]=91.8

MatrixConsumer[23,2]= 465
MatrixConsumer[23,3]=210
MatrixConsumer[23,4]=218.6

MatrixConsumer[24,2]= 945
MatrixConsumer[24,3]=615
MatrixConsumer[24,4]=156

MatrixConsumer[25,2]= 855
MatrixConsumer[25,3]=555
MatrixConsumer[25,4]=147

MatrixConsumer[26,2]= 945
MatrixConsumer[26,3]=555
MatrixConsumer[26,4]=143.3

MatrixConsumer[27,2]= 850
MatrixConsumer[27,3]=630
MatrixConsumer[27,4]=156

MatrixConsumer[28,2]=865 
MatrixConsumer[28,3]=630
MatrixConsumer[28,4]=91.8

MatrixConsumer[29,2]= 615
MatrixConsumer[29,3]=510
MatrixConsumer[29,4]=220.4

MatrixConsumer[30,2]= 930
MatrixConsumer[30,3]=690
MatrixConsumer[30,4]=170.7

MatrixConsumer[31,2]= 900
MatrixConsumer[31,3]=645
MatrixConsumer[31,4]=170.7

MatrixConsumer[32,2]= 1050
MatrixConsumer[32,3]=690
MatrixConsumer[32,4]=170.73

MatrixConsumer[33,2]=1050
MatrixConsumer[33,3]=615
MatrixConsumer[33,4]=147

MatrixConsumer[34,2]= 1110
MatrixConsumer[34,3]=555
MatrixConsumer[34,4]=208.5

MatrixConsumer[35,2]= 1080
MatrixConsumer[35,3]=555
MatrixConsumer[35,4]=208.5

MatrixConsumer[36,2]= 1140
MatrixConsumer[36,3]=660
MatrixConsumer[36,4]=170.7

MatrixConsumer[37,2]= 990
MatrixConsumer[37,3]=690
MatrixConsumer[37,4]=194

MatrixConsumer[38,2]= 975
MatrixConsumer[38,3]=390
MatrixConsumer[38,4]=165.3

MatrixConsumer[39,2]= 975
MatrixConsumer[39,3]=270
MatrixConsumer[39,4]=243.2

MatrixConsumer[40,2]= 1065
MatrixConsumer[40,3]=315
MatrixConsumer[40,4]=226.6

MatrixConsumer[41,2]= 1095
MatrixConsumer[41,3]=210
MatrixConsumer[41,4]=120.3

MatrixConsumer[42,2]= 870
MatrixConsumer[42,3]=430
MatrixConsumer[42,4]=312

MatrixConsumer[43,2]=930 
MatrixConsumer[43,3]=270
MatrixConsumer[43,4]=166

MatrixConsumer[44,2]=900 
MatrixConsumer[44,3]=180
MatrixConsumer[44,4]=155

MatrixConsumer[45,2]= 810
MatrixConsumer[45,3]=180
MatrixConsumer[45,4]=166

MatrixConsumer[46,2]=795 
MatrixConsumer[46,3]=240
MatrixConsumer[46,4]=156

MatrixConsumer[47,2]= 210
MatrixConsumer[47,3]=360
MatrixConsumer[47,4]=212

MatrixConsumer[48,2]=735 
MatrixConsumer[48,3]=420
MatrixConsumer[48,4]=212

MatrixConsumer[49,2]=900 
MatrixConsumer[49,3]=410
MatrixConsumer[49,4]=82

MatrixConsumer[50,2]=1110 
MatrixConsumer[50,3]=405
MatrixConsumer[50,4]=82

#MatrixConsumer[51,2]=315 
#MatrixConsumer[51,3]=255
#MatrixConsumer[51,4]=76

NumberOfPower=8 # количесвто точек, необходимых для размещения ИП
Power=1150
NumberOfPointsPossible=30 # количесвто точек, возможного размещения ИП
MatrixPower<-matrix(nrow=NumberOfPointsPossible, ncol=3) #возможные места размещения ИП
colnames(MatrixPower)<-c("Code","x","y")
MatrixPower[,1]=1:NumberOfPointsPossible


MatrixPower[1,2]=360
MatrixPower[1,3]=390

MatrixPower[2,2]=240
MatrixPower[2,3]=75

MatrixPower[3,2]=570
MatrixPower[3,3]=240

MatrixPower[4,2]=135
MatrixPower[4,3]=240

MatrixPower[5,2]=750
MatrixPower[5,3]=585

MatrixPower[6,2]=1020
MatrixPower[6,3]=525

MatrixPower[7,2]=930
MatrixPower[7,3]=345

MatrixPower[8,2]=750
MatrixPower[8,3]=300

MatrixPower[9,2]=420
MatrixPower[9,3]=300

MatrixPower[10,2]=225
MatrixPower[10,3]=300

MatrixPower[11,2]=225
MatrixPower[11,3]=195

MatrixPower[12,2]=833
MatrixPower[12,3]=400

MatrixPower[13,2]=225
MatrixPower[13,3]=255

MatrixPower[14,2]=420
MatrixPower[14,3]=125

MatrixPower[15,2]=355
MatrixPower[15,3]=125

MatrixPower[16,2]=570
MatrixPower[16,3]=345

MatrixPower[17,2]=645
MatrixPower[17,3]=285

MatrixPower[18,2]=675
MatrixPower[18,3]=585

MatrixPower[19,2]=630
MatrixPower[19,3]=450

MatrixPower[20,2]=750
MatrixPower[20,3]=510

MatrixPower[21,2]=900
MatrixPower[21,3]=615

MatrixPower[22,2]=1065
MatrixPower[22,3]=465

MatrixPower[23,2]=1035
MatrixPower[23,3]=360

MatrixPower[24,2]=1050
MatrixPower[24,3]=645

MatrixPower[25,2]=930
MatrixPower[25,3]=540

MatrixPower[26,2]=810
MatrixPower[26,3]=300

MatrixPower[27,2]=675
MatrixPower[27,3]=240

MatrixPower[28,2]=795
MatrixPower[28,3]=360

MatrixPower[29,2]=673
MatrixPower[29,3]=360

MatrixPower[30,2]=890
MatrixPower[30,3]=240

NumberOfChromo=400


Chromosoma<-matrix(nrow = NumberOfChromo, ncol = NumberOfPower)

for(j in 1: NumberOfChromo){
  for(i in 1:NumberOfPower)
  { t=0
  TemporaryPlace=0
  while(t==0){
    #print(t)
    TemporaryPlace=sample(x = 1:NumberOfPointsPossible, size = 1, replace = FALSE)
    if(i==1)
    { Chromosoma[j,i]=TemporaryPlace
    t=1
    }
    else{
      for(k in 1:(i-1)){
        if(Chromosoma[j,k]==TemporaryPlace) {
          t=0
          break} 
        else{
          Chromosoma[j,i]=TemporaryPlace
          t=1
        }
      } 
    }
  }
  }
}






NumberOfPovtorenii=50

print(Chromosoma)

ChromosomaValueFunction<-matrix(nrow = NumberOfPovtorenii, ncol = NumberOfPower)
ValueFunction<-matrix(nrow=NumberOfPovtorenii)
DataFrameValueFunction<-data.frame(ChromosomaValueFunction,ValueFunction)
for( i in 1:NumberOfPovtorenii){
  
  ChromosomeAfterCrossover=Chromosoma
  ChromosomeAfterCrossover=Crossover(NumberOfChromo,NumberOfPower,Chromosoma)
  
  parents<-matrix(nrow(ChromosomeAfterCrossover), ncol=2)
  colnames(parents)<-c("number","fitnessvalue")
  parents=Fitness(nrow(ChromosomeAfterCrossover),NumberOfPower,NumberOfConsumers,Power,MatrixPower,ChromosomeAfterCrossover,MatrixConsumer)
  parents<-parents[order(parents[,2]),]
  
  for (t in 1:NumberOfPower){
    DataFrameValueFunction[i,t]=ChromosomeAfterCrossover[parents[1,1],t]
  }
  
 # DataFrameValueFunction[i,1]=ChromosomeAfterCrossover[parents[1,1],1]
 # DataFrameValueFunction[i,2]=ChromosomeAfterCrossover[parents[1,1],2]
 # DataFrameValueFunction[i,3]=ChromosomeAfterCrossover[parents[1,1],3]
 # DataFrameValueFunction[i,4]=ChromosomeAfterCrossover[parents[1,1],4]
 # DataFrameValueFunction[i,5]=ChromosomeAfterCrossover[parents[1,1],5]
 # DataFrameValueFunction[i,6]=ChromosomeAfterCrossover[parents[1,1],6]
 # DataFrameValueFunction[i,7]=ChromosomeAfterCrossover[parents[1,1],7]
#  DataFrameValueFunction[i,8]=ChromosomeAfterCrossover[parents[1,1],8]
  DataFrameValueFunction[i,9]=parents[1,2]
  parents=parents[1:NumberOfChromo,]
  Chromosoma=ChromosomeAfterCrossover[parents[1:NumberOfChromo,1],]
 
  
  
}









DataFrameValueFunction
#plot(x=1:NumberOfPovtorenii,y=DataFrameValueFunction[,4]*10^-5,type="l")
windowsFonts(
  A=windowsFont("Times New Roman")
)
plot(x=1:NumberOfPovtorenii,y=DataFrameValueFunction[,9]*10^-5,xlab="Кількість ітерацій",ylab="Значення ЦФ", family="A",cex.axis=1.3,cex.lab=1.3, main="Графік зміни цільової функції", type="l")


#/////////////

DataFrameValueFunction<-DataFrameValueFunction[order(DataFrameValueFunction[,4]),]
TheBestSolution=DataFrameValueFunction[1,1:NumberOfPower]
   #//////////////
#TheBestSolution[1,]=c(4,9,12,24,15,16,30,21)
#////////////


#Закрпеление
PlasePower<-matrix(nrow = NumberOfPower, ncol = 3)
colnames(PlasePower)<-c("p","x","y")
PlasePower[,1]=Power
for(i in 1:NumberOfPower){
  PlasePower[i,2]=MatrixPower[TheBestSolution[1,i],2]
  PlasePower[i,3]=MatrixPower[TheBestSolution[1,i],3]
}


TheBestSolution

MatrixS<-matrix(nrow = NumberOfConsumers, ncol =5 )
colnames(MatrixS)<-c("xC","yC","xP","yP","R")


x<-c(0,0)
y<-c(0,0)
windowsFonts(
  A=windowsFont("Times New Roman")
)
#plotxxb=c(seq(0,max(MatrixConsumer[,2]),50))
PlotConsumer<-plot(x,y,xlab="x",ylab="y", family="A",cex.axis=1.3,cex.lab=1.3, main="Закріплення споживачів за ДЖ", type="l",col="white",xlim = c(0,max(MatrixConsumer[,2])),ylim=c(0,max(MatrixConsumer[,3])))
#ggsave('C:\\Users\\kharc\\OneDrive\\Рабочий стол\\ProgramDiplom50\\Графики\\file1.png',PlotConsumer)



#plot(x,y,xlab="x",ylab="y", family="A",cex.axis=1.3,cex.lab=1.3,  main="Закріплення споживачів за ДЖ", type="l",col="white",xlim = c(0,1500),ylim=c(0,max(MatrixConsumer[,3])))
#seq(0,maxx,50)
#plot(x,y,xlab="x",ylab="y", family="A",cex.axis=1.3,cex.lab=1.3,  main="Закріплення споживачів за ДЖ", type="l",col="white",xlim =c( seq(0,max(MatrixConsumer[,2]),50)),ylim=c(seq(0,max(MatrixConsumer[,3]),50)))
#lines(x,y,col="while")

for(i in 1:NumberOfConsumers){
  
  znach = 10000000000000000
  pointg = 0
  {
    for(k in 1:NumberOfPower){
      
      if( PlasePower[k,1]>MatrixConsumer[i,4])
      {
        
        znach1=sqrt((PlasePower[k,2]-MatrixConsumer[i,2])^2+(PlasePower[k,3]-MatrixConsumer[i,3])^2)
      }
      else
      {
        znach1=1000000000
      }
      if (znach1<znach)
      {
        znach = znach1
        pointg=k
      }
    }
    
    PlasePower[pointg,1]=PlasePower[pointg,1]-MatrixConsumer[i,4]
    print("Consumer:=")
    print(MatrixConsumer[i,])
    print("Mesto:=")
    print(PlasePower[pointg,])
    
    x1<-c(MatrixConsumer[i,2],PlasePower[pointg,2])
    print("x1:=")
    print(x1)
    MatrixS[i,1]=MatrixConsumer[i,2]
    MatrixS[i,3]=PlasePower[pointg,2]
    
    
    y1<-c(MatrixConsumer[i,3],PlasePower[pointg,3])
    lines(x1,y1,col="black")
    print("y1:=")
    print(y1)
    MatrixS[i,2]=MatrixConsumer[i,3]
    MatrixS[i,4]=PlasePower[pointg,3]
    
    MatrixS[i,5]=znach
    
    
  }
}
TheBestSolution
MatrixS
parents[1,2]

for(i in 1:8){
  print(MatrixPower[c[i],])
  
  }

