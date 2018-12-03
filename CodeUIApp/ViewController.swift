//
//  ViewController.swift
//  CodeUIApp
//
//  Created by Gaku on 2018/12/04.
//  Copyright © 2018 Asility. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: Views
    let label = UILabel()
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 背景色を変更
        self.view.backgroundColor = UIColor.green
        
        /* ラベルを配置 */
        // ラベルに文字列を設定
        self.label.text = "平成最後のアドベントカレンダー！"
        // ラベルを設置
        self.view.addSubview(self.label)
        // ラベルの位置をSnapKit（AutoLayoutで指定）
        self.label.snp.makeConstraints { (make) in
            make.center.equalToSuperview() // 中心を親Viewに合わせる
        }
    }
}

