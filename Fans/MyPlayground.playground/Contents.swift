//: Playground - noun: a place where people can play

import UIKit

var areas = ["海淀区","昌平区","东城区","朝阳区","西城区","丰台区","石景山区","顺义区","通州区","大兴区"]
//,"门头沟区","平谷区","密云区","怀柔区","延庆区"
//如果二个数组数量不等的话就会报错
var areaImages = ["xinzhuan","qilihe","youxi","baiyun","shangjie","nangang","yaodu","wuhou","jinping","furong"]
//省

var provinces = ["上海","甘肃","福建","青海","广东","福建","黑龙江","山西","四川","广东","湖南"]
//区
var parts = ["华东","西北","东南","西北","华南","东南","东北","华北","西南","华南","华中"]

var visited = [Bool](repeatElement(false, count:11))

for i in 0..<areas.count{
    print("Area(name: \"\(areas[i])\", province:  \"\(provinces[i])\", part:  \"\(parts[i])\", image: \" \(areaImages[i])\", isVieited:  \(visited[i]))",",")
}