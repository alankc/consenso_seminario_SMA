x = [23; 16; 25];
 
L = [1 -1 0;
      -1 2 -1;
      0 -1 1];

total_time = 8;
dt = 0.1;
total_positions = total_time / dt + 1;
xs = zeros(3, total_positions); 
xs(:,1) = x;

for i = 2:1:total_positions
   x_dot = -L * xs(:, i - 1);
   xs(:,i) =  xs(:,i - 1) + dt * x_dot;
end

x_axis = 0:dt:total_time;
plot(x_axis, xs(1,:), '--', 'LineWidth', 2); hold on;
plot(x_axis, xs(2,:), '-.', 'LineWidth', 2);
plot(x_axis, xs(3,:), 'LineWidth', 2);
yticks([16:1:25])
ylim([16 25])
xticks([0:1:8])
xlabel('Tempo (s)')
ylabel('Temperatura (°C)')
set(gca,'FontSize',18) % Creates an axes and sets its FontSize to 18



