//
//  ViewController.swift
//  CalculatorWithUI
//
//  Created by t2023-m0019 on 6/30/24.
//
import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var number: Int = 0
    private var currentNumber: String = "0"
    private var beforeNumber: String = ""
    private var operation: String = ""
    
    let numberLabel = UILabel()
    let button7 = UIButton()
    let button8 = UIButton()
    let button9 = UIButton()
    let button4 = UIButton()
    let button5 = UIButton()
    let button6 = UIButton()
    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    let button0 = UIButton()
    let resetButton = UIButton()
    let addButton = UIButton()
    let subtractButton = UIButton()
    let multiplyButton = UIButton()
    let divideButton = UIButton()
    let equalsButton = UIButton()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        configureUI()
    }
    
    func makeHorizontalStackView(_ views: [UIButton]) -> UIStackView {
        
        let stackView = UIStackView(arrangedSubviews: views)
        
        stackView.axis = .horizontal
        stackView.backgroundColor = .black
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        
        return stackView
        
    }
    
    func makeVerticalStackView(_ views: [UIStackView]) -> UIStackView {
        
        let verticalStackView = UIStackView(arrangedSubviews: views)
        verticalStackView.axis = .vertical
        verticalStackView.backgroundColor = .black
        verticalStackView.spacing = 10
        verticalStackView.distribution = .fillEqually
        
        return verticalStackView
    }
    
    lazy var h1 = makeHorizontalStackView([button7, button8, button9, addButton])
    lazy var h2 = makeHorizontalStackView([button4, button5, button6, subtractButton])
    lazy var h3 = makeHorizontalStackView([button1, button2, button3, multiplyButton])
    lazy var h4 = makeHorizontalStackView([resetButton, button0, equalsButton, divideButton])
    lazy var v1 = makeVerticalStackView([h1, h2, h3, h4])
    
    private func configureUI() {
        
        view.backgroundColor = .black
        
        numberLabel.text = "0"
        numberLabel.backgroundColor = .black
        numberLabel.textAlignment = .right
        numberLabel.textColor = .white
        numberLabel.font = .systemFont(ofSize: 60, weight: .bold)
        
        button7.setTitle("7", for: .normal)
        button7.setTitleColor(.white, for: .normal)
        button7.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button7.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button7.layer.cornerRadius = 40
        button7.addTarget(self, action: #selector(numberButtonTapped), for: .touchDown)
        
        button8.setTitle("8", for: .normal)
        button8.setTitleColor(.white, for: .normal)
        button8.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button8.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button8.layer.cornerRadius = 40
        button8.addTarget(self, action: #selector(numberButtonTapped), for: .touchDown)
        
        button9.setTitle("9", for: .normal)
        button9.setTitleColor(.white, for: .normal)
        button9.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button9.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button9.layer.cornerRadius = 40
        button9.addTarget(self, action: #selector(numberButtonTapped), for: .touchDown)
        
        button4.setTitle("4", for: .normal)
        button4.setTitleColor(.white, for: .normal)
        button4.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button4.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button4.layer.cornerRadius = 40
        button4.addTarget(self, action: #selector(numberButtonTapped), for: .touchDown)
        
        button5.setTitle("5", for: .normal)
        button5.setTitleColor(.white, for: .normal)
        button5.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button5.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button5.layer.cornerRadius = 40
        button5.addTarget(self, action: #selector(numberButtonTapped), for: .touchDown)
        
        button6.setTitle("6", for: .normal)
        button6.setTitleColor(.white, for: .normal)
        button6.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button6.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button6.layer.cornerRadius = 40
        button6.addTarget(self, action: #selector(numberButtonTapped), for: .touchDown)
        
        button1.setTitle("1", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button1.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button1.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button1.layer.cornerRadius = 40
        button1.addTarget(self, action: #selector(numberButtonTapped), for: .touchDown)
        
        button2.setTitle("2", for: .normal)
        button2.setTitleColor(.white, for: .normal)
        button2.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button2.layer.cornerRadius = 40
        button2.addTarget(self, action: #selector(numberButtonTapped), for: .touchDown)
        
        button3.setTitle("3", for: .normal)
        button3.setTitleColor(.white, for: .normal)
        button3.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button3.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button3.layer.cornerRadius = 40
        button3.addTarget(self, action: #selector(numberButtonTapped), for: .touchDown)
        
        button0.setTitle("0", for: .normal)
        button0.setTitleColor(.white, for: .normal)
        button0.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button0.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button0.layer.cornerRadius = 40
        button0.addTarget(self, action: #selector(numberButtonTapped), for: .touchDown)
        
        resetButton.setTitle("AC", for: .normal)
        resetButton.setTitleColor(.white, for: .normal)
        resetButton.backgroundColor = .orange
        resetButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        resetButton.layer.cornerRadius = 40
        resetButton.addTarget(self, action: #selector(resetButtonTapped), for: .touchDown)
        
        addButton.setTitle("+", for: .normal)
        addButton.setTitleColor(.white, for: .normal)
        addButton.backgroundColor = .orange
        addButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        addButton.layer.cornerRadius = 40
        addButton.addTarget(self, action: #selector(operationButtonTapped(_:)), for: .touchDown)
        
        subtractButton.setTitle("-", for: .normal)
        subtractButton.setTitleColor(.white, for: .normal)
        subtractButton.backgroundColor = .orange
        subtractButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        subtractButton.layer.cornerRadius = 40
        subtractButton.addTarget(self, action: #selector(operationButtonTapped(_:)), for: .touchDown)
        
        multiplyButton.setTitle("*", for: .normal)
        multiplyButton.setTitleColor(.white, for: .normal)
        multiplyButton.backgroundColor = .orange
        multiplyButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        multiplyButton.layer.cornerRadius = 40
        multiplyButton.addTarget(self, action: #selector(operationButtonTapped(_:)), for: .touchDown)
        
        divideButton.setTitle("/", for: .normal)
        divideButton.setTitleColor(.white, for: .normal)
        divideButton.backgroundColor = .orange
        divideButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        divideButton.layer.cornerRadius = 40
        divideButton.addTarget(self, action: #selector(operationButtonTapped(_:)), for: .touchDown)
        
        equalsButton.setTitle("=", for: .normal)
        equalsButton.setTitleColor(.white, for: .normal)
        equalsButton.backgroundColor = .orange
        equalsButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        equalsButton.layer.cornerRadius = 40
        equalsButton.addTarget(self, action: #selector(equalsButtonTapped(_:)), for: .touchDown)
        
        
        [numberLabel, v1]
            .forEach { view.addSubview($0) }
        
        v1.snp.makeConstraints{
            $0.top.equalTo(numberLabel.snp.bottom).offset(60)
            $0.width.equalTo(350)
            $0.height.equalTo(350)
            $0.centerX.equalToSuperview()
        }
        
        numberLabel.snp.makeConstraints {
            $0.leading.equalTo(view).offset(30)
            $0.trailing.equalTo(view).offset(-30)
            $0.top.equalTo(view).offset(200)
            $0.height.equalTo(100)
            
        }
    }
    
    @objc
    private func equalsButtonTapped() {
        guard let before = Double(beforeNumber), let now = Double(currentNumber) else { return }
        var result: Double = 0
        switch operation {
        case "+":
            result = before + now
        case "-":
            result = before - now
        case "*":
            result = before * now
        case "/":
            result = before / now
        default:
            return
        }
        currentNumber = String(result)
        beforeNumber = ""
        operation = ""
        numberLabel.text = currentNumber
    }
    
    //            private func configureButton(button: UIButton, title: String, color: UIColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0), action: Selector? = #selector(numberButtonTapped( :))) {
    //                button.setTitle(title, for: .normal)
    //                button.setTitleColor(.white, for: .normal)
    //                button.backgroundColor = color
    //                button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
    //                button.layer.cornerRadius = 40
    //                if let action = action {
    //                    button.addTarget(self, action: action, for: .touchDown)
    //                }
    //            }
    //
//                @objc
//                private func numberButtonTapped(_ sender: UIButton) {
//                    guard let title = sender.currentTitle else { return }
//                    if currentNumber == "0" {
//                        currentNumber = title
//                    } else {
//                        currentNumber += title
//                    }
//                    numberLabel.text = currentNumber
//                }
//                @objc
//                private func resetButtonTapped() {
//                    currentNumber = "0"
//                    beforeNumber = ""
//                    operation = ""
//                    numberLabel.text = currentNumber
//                }
//            }
//                @objc
//            private func operationButtonTapped(_ sender: UIButton) {
//                guard let op = sender.currentTitle else { return }
//                if !currentNumber.isEmpty {
//                    beforeNumber = currentNumber
//                    currentNumber = "0"
//                    operation = op
//                }
//            }
    
    @objc func numberButtonTapped(sender: UIButton) {
        
    }
    
    @objc func resetButtonTapped(sender: UIButton) {
        
    }
    @objc func operationButtonTapped(_ sender: UIButton) {
        
    }
    @objc func equalsButtonTapped(_ sender: UIButton) {
        
    }
}


#Preview {
    let vc = ViewController()
    return vc
}

