#! /bin/bash

if [ $1 == 1 ]; then
  ./svm_learn example1/train.dat example1/model
  echo
  ./svm_classify example1/test.dat example1/model example1/predictions
elif [ $1 == 2 ]; then
  svm_learn example2/train_transduction.dat example2/model 
  svm_classify example2/test.dat example2/model example2/predictions
  # The classification module is called only to get the accuracy printed.
  # The transductive learner is invoked automatically, since train_transduction.dat
  # contains unlabeled examples (i. e. the 600 test examples). You can compare
  # the results to those of the inductive SVM by running:
  svm_learn example2/train_induction.dat example2/model 
  svm_classify example2/test.dat example2/model example2/predictions
elif [ $1 == 3 ]; then
  ./svm_learn -z p example3/train.dat example3/model 
  echo
  ./svm_classify example3/test.dat example3/model example3/predictions
fi
