# 如何用 Git Clone 的方式連結 GitHub Repository


首先，由 GitHub Repository 取得 SSH URL，例如下圖的˙：git@github.com:olycats/dbt-demo.git
![https://ithelp.ithome.com.tw/upload/images/20230803/201595751Z4fLNmI1g.png](https://ithelp.ithome.com.tw/upload/images/20230803/201595751Z4fLNmI1g.png)


在 dbt Cloud 的 Setup a Repository 選 Git Clone，Git URL 輸入 GitHub Repository 的 SSH URL
![https://ithelp.ithome.com.tw/upload/images/20230803/20159575wJLkRBzpoL.png](https://ithelp.ithome.com.tw/upload/images/20230803/20159575wJLkRBzpoL.png)


接下來要將此處的 Deploy Key 加到 GitHub Repository 。
![https://ithelp.ithome.com.tw/upload/images/20230803/20159575DByD5ciQwD.png](https://ithelp.ithome.com.tw/upload/images/20230803/20159575DByD5ciQwD.png)


到我們的 GitHub Repository -> Settings -> Security - Deploy Keys -> Add Deploy Key。  
將前一步的 SSH Key 貼入此處，並勾選 Allow Write Access。
![https://ithelp.ithome.com.tw/upload/images/20230806/20159575lfWC5etl6u.png](https://ithelp.ithome.com.tw/upload/images/20230806/20159575lfWC5etl6u.png)

