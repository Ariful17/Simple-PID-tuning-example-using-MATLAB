num=[1];
den=[1 10 20];
plant=tf(num,den);
figure(1)
step(plant)
title('open loop response')
%_______________________
kp=300;
contr=kp;
system=feedback(contr*plant,1);
figure(2)
step(system)
title('response with p controller')
%____________________
kp=300;
kd=10;
contr=tf([kd kp],1);
system=feedback(contr*plant,1);
figure(3)
step(system)
title('respone with pd controller')
%______________________
kp=30;
ki=70;
contr=tf([kp ki],[1 0]);
system=feedback(contr*plant,1);
figure(4)
step(system)
title('respone with pi controller')
%___________________
kp=150;
ki=300;
kd=50;
contr=tf([kd kp ki],[1 0]);
system=feedback(contr*plant,1);
figure(5)
step(system)
title('respone with pid controller')

%Here PI control yields the best result%