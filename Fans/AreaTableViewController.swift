//
//  AreaTableViewController.swift
//  Fans
//
//  Created by kaitouLee on 2017/5/1.
//  Copyright © 2017年 kaitouLee. All rights reserved.
//

import UIKit

class AreaTableViewController: UITableViewController {

    
    var areas = [
        Area(name: "海淀区", province:  "上海", part:  "华东", image: "xinzhuan", isVieited:false) ,
        Area(name: "昌平区", province:  "甘肃", part:  "西北", image: "qilihe", isVieited:false) ,
        Area(name: "东城区", province:  "福建", part:  "东南", image: "youxi", isVieited:false) ,
        Area(name: "朝阳区", province:  "青海", part:  "西北", image: "baiyun", isVieited:false) ,
        Area(name: "西城区", province:  "广东", part:  "华南", image: "shangjie", isVieited:false) ,
        Area(name: "丰台区", province:  "福建", part:  "东南", image: "nangang", isVieited:false) ,
        Area(name: "石景山区", province:  "黑龙江", part:  "东北", image: "yaodu", isVieited:false) ,
        Area(name: "顺义区", province:  "山西", part:  "华北", image: "wuhou", isVieited:false) ,
        Area(name: "通州区", province:  "四川", part:  "西南", image: "jinping", isVieited:false) ,
        Area(name: "大兴区", province:  "广东", part:  "华南", image: "furong", isVieited:false)
    
    ]
////,"门头沟区","平谷区","密云区","怀柔区","延庆区"
//    //如果二个数组数量不等的话就会报错
//    var areaImages = ["xinzhuan","qilihe","youxi","baiyun","shangjie","nangang","yaodu","wuhou","jinping","furong"]
//    //省
//    
//    var provinces = ["上海","甘肃","福建","青海","广东","福建","黑龙江","山西","四川","广东","湖南"]
//    //区
//    var parts = ["华东","西北","东南","西北","华南","东南","东北","华北","西南","华南","华中"]
//    
//    //用于跟踪cell
//    
//    var visited = [Bool](repeatElement(false, count:11))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table delegate
    
    //右滑后响应  分享菜单
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let actionShare = UITableViewRowAction(style: .normal, title: "分享") { (_, indexPath) in
            let actionSheet = UIAlertController(title: "分享", message: nil, preferredStyle: .actionSheet)
            let option1 = UIAlertAction(title: "QQ", style: .default, handler: nil)
            let option2 = UIAlertAction(title: "微信", style: .default, handler: nil)
            let optionCancel = UIAlertAction(title: "取消", style: .cancel, handler: nil)
            //把三个子菜单加入到actionSheet实例中
            actionSheet.addAction(option1)
            actionSheet.addAction(option2)
            actionSheet.addAction(optionCancel)
            
            //显示出来
            self.present(actionSheet,animated: true,completion: nil)

    }
        //菜单项颜色配置
        actionShare.backgroundColor = UIColor.orange
        
//删除功能
        let actionDel = UITableViewRowAction(style: .destructive, title: "删除") { (_, indexPath) in

            self.areas.remove(at: indexPath.row)
            //重构代码后不用的代码
//            self.areaImages.remove(at: indexPath.row)
//            self.provinces.remove(at: indexPath.row)
//            self.parts.remove(at: indexPath.row)
//            self.visited.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
        //置顶
        let actionTop = UITableViewRowAction(style: .default, title: "置顶") { (_, _) in
            
        }
        //alpha是透明度1为不透明 除以255 因为值是0到1之间的
        actionTop.backgroundColor = UIColor(red: 245/255, green: 199/255, blue: 221/255, alpha: 1)
        
    return [actionShare,actionDel,actionTop]
}
    
    
    //触摸后通知框
    
    /*
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menu = UIAlertController(title: "同学你好", message: "您点击了第\(indexPath.row)", preferredStyle: .actionSheet)
//        let option1 = UIAlertAction(title: "确定", style: .default, handler: nil)
        let option2 = UIAlertAction(title: "取消", style: .destructive, handler: nil)//destuctive效果是红字
        //去过以后有标识
        let option3 = UIAlertAction(title: "我去过", style: .default) { (_) in
            let cell = tableView.cellForRow(at: indexPath)
            cell?.accessoryType = .checkmark
            self.visited[indexPath.row] = true //跟踪cell 去过就改成true
        }
        
//        menu.addAction(option1)
        menu.addAction(option2)
        menu.addAction(option3)
        
        
        
        self.present(menu,animated: true,completion: nil)
//        print("你点击了第几组",indexPath.section,"组",indexPath.row,"行 ")
        
        //取消选择
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    */
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return areas.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        /*
         as! CustomTableViewCell

         as 类型转换，从一个类型转换到另一个类型
         生活中；
         人  》黄种人（衍生）
         Swift 》 编程语言（溯源）
         美元  》 人民币（格式）
         
         as!强制转换（失败app会奔溃）
         as?安全转换（失败不会奔溃）
         */
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        
        cell.nameLabel.text = areas[indexPath.row].name
        cell.provinceLabel.text = areas[indexPath.row].province
        cell.partLabel.text = areas[indexPath.row].part
        cell.thumbImageView.image = UIImage(named: areas[indexPath.row].image)
        
//    上面一段为更新后代码    //indexPath包含二部分内容在那个区块 numberOfRowsInSection 哪一行row
//        cell.textLabel?.text = areas[indexPath.row]
//        cell.imageView?.image = UIImage(named: areaImages[indexPath.row])
        
        
        //把正方形图片切成圆形
        cell.thumbImageView.layer.cornerRadius = cell.thumbImageView.frame.size.height / 2
        cell.thumbImageView.clipsToBounds = true
        
        //读取之前去过状态是否表示了 重用cell时读取状态 tableView(_:cellForRowAt indexPath)
//        if visited[indexPath.row]{
//            cell.accessoryType = .checkmark
//        }else{
//            cell.accessoryType = .none
//        }
        
//        //上面简写 三元
        cell.accessoryType = areas[indexPath.row].isVieited ? .checkmark : .none
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

  
    // Override to support editing the table view. 滑动删除功能
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        /*
        if editingStyle == .delete {
            //从模型中删除数组
            self.areaImages.remove(at: indexPath.row)
            self.areas.remove(at: indexPath.row)
            self.provinces.remove(at: indexPath.row)
            self.parts.remove(at: indexPath.row)
            self.visited.remove(at: indexPath.row)
            
//            //调试代码
//            print("删除一行后还剩的区域数目：",self.areas.count)
//            for area in areas {
//                print(area)
//            }
            
            // Delete the row from the data source  界面控制删除
            tableView.deleteRows(at: [indexPath], with: .fade)//区别删除动画效果
//            tableView.reloadData()整体tableView删除给用户比较生硬
 
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        } 
 */
//    }

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation  转场设置

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if  segue.identifier == "showAreaDetail" {
            let dest = segue.destination as! DetailTableViewController
            dest.area = areas[tableView.indexPathForSelectedRow!.row]
        }
    }


}
