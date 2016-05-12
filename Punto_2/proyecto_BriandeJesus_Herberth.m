#!octave
# punto 2
printf("punto 2\n");
data = load('datos.txt');
x = data(:,1);
y = data(:,2);
function plotData(x,y)
plot(x,y,'rx','MarkerSize',2);
end
plotData(x,y);
xlabel('Numero de sismos en Mayo 2016'); % Set the x-axis label
ylabel('Magnitud del sismo'); % Set the y-axis label
fprintf('Grafica 1.\n');
fprintf('Programa pausado. Presiona enter para continuar.\n');
pause;
m = length(x);
X = [ones(m, 1) x];
fprintf('Calculando theta.\n');
theta = (pinv(X'*X))*X'*y
hold on;
plot(X(:,2), X*theta, '-')
legend('Training data', 'Linear regression')
hold off
fprintf('Grafica 2.\n');
fprintf('Programa pausado. Presiona enter para continuar.\n');
pause;