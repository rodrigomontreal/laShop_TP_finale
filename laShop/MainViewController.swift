//=======================================
import UIKit
//=======================================
class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    //---------------------------//--------------------------- MARK: -------> IBOutlets
    @IBOutlet weak var tableView: UITableView!
    //---------------------------//--------------------------- MARK: -------> Properties
    var titles = ["CAMÉRAS", "LENTILLES", "TRÉPIEDS"]
    var numberOfElementsInSections: [Int]!
    var inventory =
    ["CAMÉRAS" :
        [
            ["CAMÉRA 1" : "GOPRO", "IMAGE": "camera_1.png"],
            ["CAMÉRA 2" : "SONY PMW F3L - FULL HD", "IMAGE": "camera_2.png"],
            ["CAMÉRA 3" : "SONY PMW EX1R - EX FULL", "IMAGE": "camera_3.png"],
            ["CAMÉRA 4" : "BLACK MAGIC 4K", "IMAGE": "camera_4.png"],
            ["CAMÉRA 5" : "CANON EOS 7d", "IMAGE": "camera_5.png"]
        ],
    "LENTILLES" :
        [
            ["LENTILLES 1" : "SONY KIT 20-25-35-50-85-135mm", "IMAGE": "lentille_1.png"],
            ["LENTILLES 2" : "CANON VISUAL SFR SUPER 35", "IMAGE": "lentille_2.png"],
            ["LENTILLES 3" : "CANON EF 14 - 14mm", "IMAGE": "lentille_3.png"]
        ],
    "TRÉPIEDS" :
        [
            ["TRÉPIED 1" : "TRÉPIED RIP SHAPE C01", "IMAGE": "tripiede_1.png"],
            ["TRÉPIED 2" : "TRÉPIED MANFROTTO FLUIDE 501", "IMAGE": "tripiede_2.png"],
            ["TRÉPIED 3" : "TRÉPIED VELBON ULTRA SERIE", "IMAGE": "tripiede_3.png"],
            ["TRÉPIED 4" : "TRÉPIED RIP SHAPE C02", "IMAGE": "tripiede_4.png"]
        ]
    ]
    //---------------------------//--------------------------- MARK: -------> viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        numberOfElementsInSections = [inventory["CAMÉRAS"]!.count, inventory["LENTILLES"]!.count, inventory["TRÉPIEDS"]!.count]
    }
    //---------------------------//--------------------------- MARK: -------> TableView Section Stuff
    func numberOfSections(in tableView: UITableView) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let title = UILabel()
        //title.font = UIFont(name: "MyriadPro-Regular", size: 20)!
        title.textColor = UIColor.white
        let header = view as! UITableViewHeaderFooterView
        header.tintColor = UIColor(red: (111/255), green: (96/255), blue: (73/255), alpha: 1.0)
        header.textLabel?.font = title.font
        header.textLabel?.textColor = title.textColor
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableView.backgroundColor = UIColor.clear
        return numberOfElementsInSections[section]
    }
    //---------------------------//--------------------------- MARK: -------> TableView Stuff
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titles[section]
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:Parser1 = self.tableView.dequeueReusableCell(withIdentifier: "shop") as! Parser1
        cell.backgroundColor = UIColor.clear
        
        if let anImgView = cell.viewWithTag(101) as! UIImageView! {
            anImgView.image = UIImage(named: "camera_1.png")
        }
        
        
        if let anImgView = cell.viewWithTag(101) as! UIImageView! {
            anImgView.image = UIImage(named: "camera_2.png")
        }
       
        
        if let anImgView = cell.viewWithTag(101) as! UIImageView! {
            anImgView.image = UIImage(named: "camera_3.png")
        }
        
        
        if let anImgView = cell.viewWithTag(101) as! UIImageView! {
            anImgView.image = UIImage(named: "camera_4.png")
        }
        
        
        if let anImgView = cell.viewWithTag(101) as! UIImageView! {
            anImgView.image = UIImage(named: "camera_5.png")
        }
        return cell
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            tableView.deleteRows(at: [indexPath as IndexPath], with: UITableViewRowAnimation.automatic)
        }
    }
    //-----------------------------------
}
//=======================================









