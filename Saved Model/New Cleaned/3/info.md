Train MSE Score: 3.238658649619814 MSE
Test MSE Score: 51.590062689673957 MSE
Train MAE Score: 1.260265872293492 MAE
Test MAE Score: 5.364087449970202 MAE
Train MAPE Score: 0.1667 MAPE
Test MAPE Score: 1.0027 MAPE
Train RMSE Score: 1.799627364100639 RMSE
Test RMSE Score: 7.182622271125912 RMSE
Train RMSPE: 0.8605 RMSPE
Test RMSPE: 3.9988 RMSPE

Cumulative:
Train MSE Score: 173573.008082549698884 MSE
Test MSE Score: 1051761.777199928183109 MSE
Train MAE Score: 379.150653342867429 MAE
Test MAE Score: 807.142979788693651 MAE
Train MAPE Score: 0.0034 MAPE
Test MAPE Score: 0.0031 MAPE
Train RMSE Score: 416.620940523336742 RMSE
Test RMSE Score: 1025.554375545211315 RMSE
Train RMSPE: 0.0039 RMSPE
Test RMSPE: 0.0038 RMSPE

Time step: 10
Ratio: 0.8
Model type: CNN_LSTM
Epoch size: 1000
Batch size: 5
Early stop patience: 15, min delta: 0.0001
Model json: {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 10, 1], "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d", "trainable": true, "batch_input_shape": [null, 10, 1], "dtype": "float32", "filters": 6, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "batch_input_shape": [null, 10, 1], "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 300, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "keras_version": "2.10.0", "backend": "tensorflow"}