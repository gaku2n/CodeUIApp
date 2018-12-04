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
    let button = UIButton()
    
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
        
        /* ボタンを配置 */
        self.view.addSubview(self.button)
        self.button.setTitle("Next", for: .normal)
        self.button.addTarget(self, action: #selector(self.buttonDidTap(_:)), for: .touchUpInside)
        self.button.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview() // X軸中心を親Viewに合わせる
            make.bottom.equalTo(self.view.safeAreaInsets.bottom).inset(100) //下から100ポイント上に配置
        }
    }
    
    @objc func buttonDidTap(_ sender: UIButton) {
        let secondViewController = SecondViewController()
        self.present(secondViewController, animated: true, completion: nil)
    }
}

