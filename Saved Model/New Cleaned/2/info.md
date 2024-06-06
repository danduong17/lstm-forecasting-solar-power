Train MSE Score: 4.269482452195041 MSE
Test MSE Score: 62.119222560016858 MSE
Train MAE Score: 1.513090289245184 MAE
Test MAE Score: 5.966877724315769 MAE
Train MAPE Score: 0.2149 MAPE
Test MAPE Score: 1.2327 MAPE
Train RMSE Score: 2.066272598713693 RMSE
Test RMSE Score: 7.881574878158353 RMSE
Train RMSPE: 1.1948 RMSPE
Test RMSPE: 5.7999 RMSPE

Cumulative:
Train MSE Score: 188157.556914633139968 MSE
Test MSE Score: 1774974.671782388817519 MSE
Train MAE Score: 388.350999771208421 MAE
Test MAE Score: 1043.816817535688415 MAE
Train MAPE Score: 0.0036 MAPE
Test MAPE Score: 0.0040 MAPE
Train RMSE Score: 433.771318686048119 RMSE
Test RMSE Score: 1332.281753902825585 RMSE
Train RMSPE: 0.0042 RMSPE
Test RMSPE: 0.0050 RMSPE

Time step: 10
Ratio: 0.8
Model type: LSTM
Epoch size: 1000
Batch size: 5
Early stop patience: 15, min delta: 0.0001
Model json: {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 10, 1], "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_input"}}, {"class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "batch_input_shape": [null, 10, 1], "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "batch_input_shape": [null, 10, 1], "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "keras_version": "2.10.0", "backend": "tensorflow"}