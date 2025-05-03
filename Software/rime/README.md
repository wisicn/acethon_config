## README 鼠鬚管輸入法

#### 1.Install with the official binary PKG.

#### 2.copy the file default.custom.yaml under ~/Library/Rime from [github](https://github.com/wisicn/acethon_config/tree/master/Software/rime)

#### 3.copy the squirrel.custom.yaml under ~/Library/Rime from [github](https://github.com/wisicn/acethon_config/tree/master/Software/rime)

#### 4.Install the input schema manager [plum](https://github.com/rime/plum) and the input package

 ```
 cd ~/Library/Rime
 curl -fsSL https://raw.githubusercontent.com/rime/plum/master/rime-install | bash
 cd plum
 bash rime-install luna-pinyin
```

#### 5.卸载办法

 ```
  say goodbye Squirrel && killall Squirrel
  系统偏好设置 - 键盘 - 输入源 - 鼠须管 ✗
  sudo rm -rf "/Library/Input Methods/Squirrel.app"
  rm -rf ~/Library/Rime
 ```

#### 5.同步用戶資料
in installation.yaml

 ```
sync_dir: '/you/path/to/Dropbox/RimeSync'
installation_id: 'your-mac01'
 ```

#### 6. 自定义词库, 必须选择明月拼音输入法
   * add the luna_pinyin.custom.yaml from [github](https://github.com/wisicn/acethon_config/tree/master/Software/rime)
   * add the luna_pinyin.extended.dict.yaml from [github](https://github.com/wisicn/acethon_config/tree/master/Software/rime), this is the configure file to control which 3rd dict is enabled or not.
   * get the third party dict yaml file from here or [Rime 擴充詞庫](https://github.com/rime-aca/dictionaries)
   * you can get more dict yaml file by this [深蓝词库转换](https://github.com/studyzy/imewlconverter)
   * get the luna_pinyin.cn_en.dict.yaml from [Rime 擴充詞庫](https://github.com/rime-aca/dictionaries) 
   * add all personal dict here to luna_pinyin.wisicn.dict.yaml


#### 7.refer

* http://www.dreamxu.com/install-config-squirrel/
* http://www.jianshu.com/p/cffc0ea094a7
* https://medium.com/@scomper/%E9%BC%A0%E9%A0%88%E7%AE%A1-%E7%9A%84%E8%B0%83%E6%95%99%E7%AC%94%E8%AE%B0-3fdeb0e78814
* http://www.jianshu.com/p/cffc0ea094a7
* http://ju.outofmemory.cn/entry/178796
