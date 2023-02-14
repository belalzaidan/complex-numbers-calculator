
% vi begynner først med å ta inn input. Det som skal tastes inn er den
% relle delen av z i formen: a + b*i, altså a, og den imaginære delen,
% altså b. siden z kan være opphøyd i et tall også, må vi ha et input
% for dette tallet i tillegg; n.

a = input('Insert the real number: ');
b = input('Insert the imaginary number: ');
n = input('Insert the value of n which is the power of z: ');

% for å lage en funksjon som tilsvarer z^n = a+bi, bruker vi f for å kunne
% ekstraktere den relle og den imaginære delen fra den for å finne
% magnituden etterhvert.
f = a+b*i;
x = (imag(f))^2,(real(f))^2; % magnituden opphøyd i andre
r = sqrt(x); % kvadratroten av x, magnituden, absoluttverdien til z^n
theta = atan (b/a); 
% theta er vinkelen som ligger mellom a-aksen og magnituden

% hvis den relle delen, den imaginære delen eller begge er mindre enn null,
% bør vi omformulere verdien til vinkelen theta ved bruke av if-setninger
if a < 0 && b < 0
    theta = theta + pi;
end
if a < 0 && b > 0
    theta = theta + (1:2)* pi;
end
if a > 0 && b < 0
    theta = theta + (1.5)* pi;
end
        

disp("The angle is: "+theta) % korrekte verdien til vinkelen skrives ut
disp("The values of z are: "); % intro til verdiene for z

% z kan ha en løsning eller flere, siden den er opphøyd i et heltall, og
% for å finne alle løsninger for z, bruker vi en for-løkke som skal legge
% til 2*pi til vi kommer oss til n-i
for k = 0:n-1
    z = r*(cos((theta+k*2*pi)/n)+i*sin((theta+k*2*pi)/n));
    disp(z); % utskrift av verdiene til z
% her plottes z
    plot(real(z),imag(z), 'rx');
    hold on
end
