//
//  ViewController.swift
//  MdFahimFaezAbir-30028
//
//  Created by Bjit on 5/12/22.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        let nibView = UINib(nibName: "SectionFourTableViewCell", bundle: nil)
        tableView.register(nibView, forCellReuseIdentifier: "nibViewSection")
        let footerNib = UINib(nibName: "TeamFlag", bundle: nil)
        tableView.register(footerNib, forHeaderFooterViewReuseIdentifier: "TeamFlag")
    }
    
    @IBOutlet weak var teamName: UITextField!
    @IBOutlet weak var playerDesc: UITextField!
    @IBOutlet weak var playerImage: UITextField!
    @IBOutlet weak var playerName: UITextField!
    @IBAction func addNewData(_ sender: Any) {
        insertDataInTable(playerName: playerName.text, playerImage: playerImage.text, playerDesc: playerDesc.text, teamName: teamName.text)
    }
    func insertDataInTable(playerName: String?, playerImage: String?, playerDesc: String?, teamName: String?){
        if teamName! == "Bangladesh"{
            BdTeam.bdTeams.append(BdTeam(playerName: playerName!, playerImg: playerImage!, desc: playerDesc!))
          tableView.reloadData()
        }else if teamName! == "Newzeland"{
            NzTeam.nzTeams.append(NzTeam(playerName: playerName!, playerImg: playerImage!, playerdesc: playerDesc!))
          tableView.reloadData()
        }else if teamName! == "Australia"{
           AusTeam.ausTeams.append(AusTeam(playerName: playerName!, playerImg: playerImage!, playerdesc: playerDesc!))
          tableView.reloadData()
        }else if teamName! == "England"{
            EngTeam.engTeams.append(EngTeam(playerName: playerName!, playerImg: playerImage!, playerdesc: playerDesc!))
          tableView.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailView"{
            let path = tableView.indexPathForSelectedRow
            if let secVc = segue.destination as? DetailViewController{
                if path?.section == 0{
                    if let row = path?.row {
                        secVc.playerName = BdTeam.bdTeams[row].playerName
                        secVc.desc = BdTeam.bdTeams[row].desc
                        secVc.img =  BdTeam.bdTeams[row].playerImg
                        secVc.color = UIColor.green
                        secVc.labelColor = UIColor.black
                        secVc.playerNameColor = UIColor.black
                    }
                }else if path?.section == 1{
                    if let row = path?.row {
                        secVc.playerName = NzTeam.nzTeams[row].playerName
                        secVc.desc = NzTeam.nzTeams[row].playerdesc
                        secVc.img =  NzTeam.nzTeams[row].playerImg
                        secVc.color = UIColor.black
                        secVc.labelColor = UIColor.systemGray5
                        secVc.playerNameColor = UIColor.systemGray5
                    }
                }else if path?.section == 2{
                    if let row = path?.row {
                        secVc.playerName = AusTeam.ausTeams[row].playerName
                        secVc.desc = AusTeam.ausTeams[row].playerdesc
                        secVc.img =  AusTeam.ausTeams[row].playerImg
                        secVc.color = UIColor.yellow
                        secVc.labelColor = UIColor.black
                        secVc.playerNameColor = UIColor.black
                    }
                }else{
                    if let row = path?.row {
                    secVc.playerName = EngTeam.engTeams[row].playerName
                        secVc.desc = EngTeam.engTeams[row].playerdesc
                    secVc.img =  EngTeam.engTeams[row].playerImg
                    secVc.color = UIColor.red
                    secVc.labelColor = UIColor.black
                    secVc.playerNameColor = UIColor.black
                    }
                }
            }
        }
    }
}
extension ViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return BdTeam.bdTeams.count
        }else if section == 1{
            return NzTeam.nzTeams.count
        }else if section == 2{
            return AusTeam.ausTeams.count
        }else{
            return EngTeam.engTeams.count
        }
    }
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        if section == 0{
//            return "Bangladesh"
//        }else if section == 1{
//            return "Newzeland"
//        }else if section == 2{
//            return "Australia"
//        }else{
//            return "England"
//        }
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            
            let firstCell = tableView.dequeueReusableCell(withIdentifier: "firstSelectionCell", for: indexPath) as! BangladeshTeamTableViewCell
            firstCell.imgView.image = UIImage(named:
                                                BdTeam.bdTeams[indexPath.row].playerImg
            )
            firstCell.labelView.text = BdTeam.bdTeams[indexPath.row].playerName
            return firstCell
        }else if indexPath.section == 1{
            let sceonedCell = tableView.dequeueReusableCell(withIdentifier: "sceondSelectioncell", for: indexPath) as! NewzelandTableViewCell
            sceonedCell.imgView.image = UIImage(named: NzTeam.nzTeams[indexPath.row].playerImg)
            sceonedCell.labelView.text = NzTeam.nzTeams[indexPath.row].playerName
            return sceonedCell
        }else if indexPath.section == 2{
            let thirdCell = tableView.dequeueReusableCell(withIdentifier: "thirdSelectionCell", for: indexPath) as! AustraliaTableViewCell
            thirdCell.imgView.image = UIImage(named:
                                                AusTeam.ausTeams[indexPath.row].playerImg
            )
            thirdCell.labelView.text = AusTeam.ausTeams[indexPath.row].playerName
            return thirdCell
        }else{
            let fourthCell = tableView.dequeueReusableCell(withIdentifier: "nibViewSection", for: indexPath) as! EnglandTableViewCell
            fourthCell.labelView.text = EngTeam.engTeams[indexPath.row].playerName
            fourthCell.imgView.image = UIImage(named:
                                                EngTeam.engTeams[indexPath.row].playerImg
            )
            return fourthCell
            
        }
    }
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            if indexPath.section == 0{
                BdTeam.bdTeams.remove(at: indexPath.row)
                tableView.beginUpdates()
                tableView.deleteRows(at: [indexPath], with: .fade)
                tableView.endUpdates()
            }else if indexPath.section == 1{
                NzTeam.nzTeams.remove(at: indexPath.row)
                tableView.beginUpdates()
                tableView.deleteRows(at: [indexPath], with: .fade)
                tableView.endUpdates()
            }else if indexPath.section == 2{
                AusTeam.ausTeams.remove(at: indexPath.row)
                tableView.beginUpdates()
                tableView.deleteRows(at: [indexPath], with: .fade)
                tableView.endUpdates()
            }else{
                EngTeam.engTeams.remove(at: indexPath.row)
                tableView.beginUpdates()
                tableView.deleteRows(at: [indexPath], with: .fade)
                tableView.endUpdates()
            }
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "TeamFlag") as! TeamFlag
            headerView.imageView.image = UIImage(named: "BD")
            return headerView
        }
        return UIView()
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        100
    }
    
}
extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("index: \(indexPath)")
        performSegue(withIdentifier: "detailView", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
}
