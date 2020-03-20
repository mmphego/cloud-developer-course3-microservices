```bash
for i in $(ls *.yaml);do echo $i; kubectl apply -f $i;done
```
