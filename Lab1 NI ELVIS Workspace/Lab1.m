%capacitance impedance in different frequency
figure(1)
frequency1=[1, 10, 100, 1000, 10000, 20000, 30000, 35000];
magnitude1=[175330, 16770, 1720, 181.43, 19.19, 8.74, 4.72, 3.46];
loglog(frequency1,magnitude1, "-ob");
xlabel('frequency(Hz)');
ylabel('magnitude(Ohm)');
title('Capacitor Impedance in different frequency');

%RC impedance in different frequency
figure(2)
frequency2=[1, 10, 100, 1000, 10000];
magnitude2=[178390, 16840, 2000, 1010, 984.26];
loglog(frequency2,magnitude2/1000, "-ob");
xlabel('frequency(Hz)');
ylabel('magnitude(kOhm)');
title('RC Impedance in different frequency');

%RC resistance and reactance in different frequency
figure(3)
R=[5650, 1300, 1020, 993.14, 984.24];
XC=[178300, 16790, 1720, 179.75, 6.77];
loglog(frequency2,R/1000, "-or",Markersize=10);hold on;
loglog(frequency2,XC/1000, "-xb", Markersize=10);hold on;
xlabel('frequency(Hz)');
ylabel('magnitude(kOhm)');
title('RC Resistance & Reactance in different frequency');

%Inverting OPAMP frequency response:
figure(4)
gain=[10.01, 9.98, 9.92, 10, 9.85, 8.03, 5.62 ,2.39];
frequency3=[100, 300, 1000, 5000, 10000, 50000, 100000, 300000];
semilogx(frequency3, 20*log10(gain), "-or",Markersize=10);
xlabel('frequency(Hz)');
ylabel('Gain(dB)');
title('Inverting OPAMP frequency response');