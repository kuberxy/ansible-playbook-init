# ansible-playbook-init

### 使用:

```
chmod +x deploy.sh
./deploy.sh
```

脚本deploy.sh的内容如下：

```
#! /bin/bash

ansible-playbook \
  --connection=local \
  --extra-vars='@project.json' \
  -bi inventory.ini \
  deploy.yml
```

文件project.json的内容如下：

    {
        "roles": [
            "web",
            "database"
        ],
        "project_dir": "/tmp/ansible-project"
    }

### 参考：

ansible-init: https://github.com/davestern/ansible-init
