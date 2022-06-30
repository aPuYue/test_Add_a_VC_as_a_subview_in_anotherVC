# test_Add_a_VC_as_a_subview_in_anotherVC
Adding a view controller as a subview in another view controller

https://stackoverflow.com/questions/27276561/adding-a-view-controller-as-a-subview-in-another-view-controller

把一个VC作为subView追加到另一个VC中的一个view中


newWay branch 显示一种简单方法,
利用Container View,
一旦创建默认会自动创建新的VC作为内容显示,
完全不需要代码追加
删除自动创建，关联到自己的目标VC

![截屏2022-06-30 15 12 07](https://user-images.githubusercontent.com/38312620/176606027-b561cbc3-9e26-41f4-a36d-1c53a52df351.png)
