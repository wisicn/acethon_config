## README 鼠鬚管輸入法

#### 1.brew cask install squirrel

#### 2.copy the file default.custom.yaml under ~/Library/Rime from github

#### 3.copy the squirrel.custom.yaml under ~/Library/Rime from github

#### 4.卸载办法

 ````
  say goodbye Squirrel && killall Squirrel
  系统偏好设置 - 键盘 - 输入源 - 鼠须管 ✗
  sudo rm -rf "/Library/Input Methods/Squirrel.app"
  rm -rf ~/Library/Rime
 ````
#### 5.同步用戶資料
in installation.yaml

 ````
sync_dir: '/Users/fred/Dropbox/RimeSync'
installation_id: 'zxue-mac01'
 ````

#### 6.refer

* http://www.dreamxu.com/install-config-squirrel/
* http://www.jianshu.com/p/cffc0ea094a7
* https://medium.com/@scomper/%E9%BC%A0%E9%A0%88%E7%AE%A1-%E7%9A%84%E8%B0%83%E6%95%99%E7%AC%94%E8%AE%B0-3fdeb0e78814
