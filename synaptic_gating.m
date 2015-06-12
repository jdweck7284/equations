function [ dx] = synaptic_gating(t, x, v_s_pre)

dx = [0;0];
alpha_s = 0.1;
alpha_x = 10;
beta_s = 0.01;
beta_x = 0.5;

dx(1) = alpha_s * x(2) * (1-x(1)) - beta_s * x(1);
dx(2) = (alpha_x / 1 + exp(-v_s_pre/2)) * (1-x(2)) - beta_x * x(2);


end

