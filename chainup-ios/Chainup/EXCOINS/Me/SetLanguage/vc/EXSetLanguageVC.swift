//
//  EXSetLanguageVC.swift
//  Chainup
//
//  Created by zewu wang on 2019/3/25.
//  Copyright © 2019 zewu wang. All rights reserved.
//

import UIKit

class EXSetLanguageVC: NavCustomVC {

    lazy var mainView : EXSetLanguageV = {
        let view = EXSetLanguageV()
        view.extUseAutoLayout()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        contentView.addSubview(mainView)
        mainView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
    
    override func setNavCustomV() {
        self.setTitle(LanguageTools.getString(key: "customSetting_action_language"))
        self.xscrollView = mainView.tableView
        self.lastVC = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
