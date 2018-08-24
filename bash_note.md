# add alias ssh shortcut.
  - alias cluster-1="ssh yourid@cluster-1.address.com"

# Kill Stopped Background Job
  - kill -9 $(jobs -p)

# Kill Background Process
  - ps -eaf | grep tkg8w58

# [Install PyCharm](https://medium.com/@GalarnykMichael/setting-up-pycharm-with-anaconda-plus-installing-packages-windows-mac-db2b158bd8c)
  - Set anaconda python
  - $which conda to get the anaconda wd, then add the python interpeter

# Jupyter Kernel Dying With xgboost
  - [Follow this link](https://stackoverflow.com/questions/51164771/python-xgboost-kernel-died)
  - Add
    - import os
    - os.environ['KMP_DUPLICATE_LIB_OK']='True'
