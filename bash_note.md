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

### Find line in files

```sh
grep -rnw '/path/to/somewhere/' -e 'pattern'
```

### && and ;

  - In cmd1 && cmd2, cmd2 is only executed if cmd1 succeeds (returns 0).
  - In cmd1 ; cmd2, cmd2 is executed in any case.

### Cron Jobs

  - [This link](https://www.ostechnix.com/a-beginners-guide-to-cron-jobs/) is useful.

Basically,
```sh
# ┌───────────── minute (0 - 59)
# │ ┌───────────── hour (0 - 23)
# │ │ ┌───────────── day of the month (1 - 31)
# │ │ │ ┌───────────── month (1 - 12)
# │ │ │ │ ┌───────────── day of the week (0 - 6) (Sunday to Saturday;
# │ │ │ │ │                                   7 is also Sunday on some systems)
# │ │ │ │ │
# │ │ │ │ │
# * * * * * command to execute
```

