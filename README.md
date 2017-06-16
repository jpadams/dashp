## dashp

Sample usage:
```
$my_path = '/mytmp/opt/files/foobar/lotsa/stuff'

file { dashp($my_path):
  ensure => directory,
}
```

Sample output:
```
Notice: /Stage[main]/Main/File[/mytmp]/ensure: created
Notice: /Stage[main]/Main/File[/mytmp/opt]/ensure: created
Notice: /Stage[main]/Main/File[/mytmp/opt/files]/ensure: created
Notice: /Stage[main]/Main/File[/mytmp/opt/files/foobar]/ensure: created
Notice: /Stage[main]/Main/File[/mytmp/opt/files/foobar/lotsa]/ensure: created
Notice: /Stage[main]/Main/File[/mytmp/opt/files/foobar/lotsa/stuff]/ensure: created
```
