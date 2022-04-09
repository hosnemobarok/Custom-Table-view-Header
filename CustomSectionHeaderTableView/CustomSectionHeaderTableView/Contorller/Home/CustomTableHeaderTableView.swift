//
//  ViewController.swift
//  CustomSectionHeaderTableView
//
//  Created by Md Hosne Mobarok on 22/10/21.
//

import UIKit

class CustomTableHeaderTableView: UIViewController {
    @IBOutlet weak var customTableView: UITableView!
    
    let sectionName = ["Section-1", "Section-2", "Section-3", "Section-4"]
    
    let color = [
        ["one", "two", "three", "four"],
        ["one"],
        ["One", "two"],
        ["One", "two", "three"]
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        
    }
    /// setup Table View
    private func setupTableView() {
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        customTableView.register(nib, forCellReuseIdentifier: "cell")
        customTableView.delegate = self
        customTableView.dataSource = self
    }
    
    //MARK: - ACTION
    @objc func nextBtnAction(){
        let storyboard = UIStoryboard(name: "About", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AboutViewControllerID") as! AboutViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    
    /// Table View Section Header
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionName.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionName[section]
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = Bundle.main.loadNibNamed("SectionHeaderTableViewCell", owner: self, options: nil)?.first as! SectionHeaderTableViewCell
        
        /// heder cell action
        if section == 0{
            headerCell.sectionNextBtn.addTarget(self, action: #selector(nextBtnAction), for: .touchUpInside)
        }else if section == 1 {
            headerCell.sectionNextBtn.addTarget(self, action: #selector(nextBtnAction), for: .touchUpInside)
        }

        headerCell.configure(text: sectionName[section])
        return headerCell
    }
}


// MARK: - Custom Table Header Table View Deleget and DataSorce
extension CustomTableHeaderTableView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return color[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = customTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        
        cell.nameLabel.text = color[indexPath.section][indexPath.row]
        cell.Img.image = UIImage(named: "iphone")!
        return cell
    }
    
    /// Select table view cell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selection cell- \(indexPath.row) : \(sectionName[indexPath.row])")
    }
    
}
