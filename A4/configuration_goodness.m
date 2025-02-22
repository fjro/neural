function G = configuration_goodness(rbm_w, visible_state, hidden_state)
% <rbm_w> is a matrix of size <number of hidden units> by <number of visible units>
% <visible_state> is a binary matrix of size <number of visible units> by <number of configurations that we're handling in parallel>.
% <hidden_state> is a binary matrix of size <number of hidden units> by <number of configurations that we're handling in parallel>.
% This returns a scalar: the mean over cases of the goodness (negative energy) of the described configurations.  
  total_weight = 0;
  number_configurations = size(visible_state, 2)
  for i = 1 : number_configurations
    total_weight += sum(sum((hidden_state(:,i) * visible_state(:,i)') .* rbm_w));
  end
  G = total_weight / number_configurations;
end
