//
//  ViewController.swift
//  Graphical SetGame
//
//  Created by Lukas on 20/06/2019.
//  Copyright © 2019 Lukas Lizal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var game: Game = Game()
    private let shapes: String = "▲●■"
    private let buttonBackgroundColor = #colorLiteral(red: 1, green: 0.9663769181, blue: 0.8609685167, alpha: 1)
    private let buttonHightlightColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    private let buttonSuccessColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
    private let colors = [#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1), #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)]
    private let attributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 35),
            .foregroundColor: UIColor.green
    ]
    @IBOutlet var cardButtons: [UIButton]!
    @IBAction func cardPressed(_ sender: UIButton) {
        if let buttonIndex = cardButtons.firstIndex(of: sender) {
            let selectedCard = game.cardsOnTable[buttonIndex]
            game.select(selectedCard)
            updateUI()
        }
    }
    @IBAction func newGamePressed(_ sender: UIButton) {
        print("pressed new game button")
        newGame()
    }
    @IBOutlet weak var dealCardsButton: UIButton!
    @IBAction func dealCardsPressed(_ sender: UIButton) {
        print("pressed deal cards button")
        if game.selectedIsMatch, let oneOfMatched = game.cardsSelected.first {
            // By selecting one of matching cards, cards are replaced with new
            game.select(oneOfMatched)
        }
        else {
            game.dealCards(quantity: 3)
        }
        updateUI()
    }
    @IBOutlet weak var scoreLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newGame()
        for cardButton in cardButtons {
            cardButton.layer.cornerRadius = 10
            cardButton.backgroundColor = buttonBackgroundColor
        }
    }
     
    private func newGame() {
        game = Game()
        Score.reset()
        updateUI()
        
    }

    private func updateUI() {
        for buttonIndex in 0..<cardButtons.count {
            if buttonIndex < game.cardsOnTable.count {
                let card = game.cardsOnTable[buttonIndex]
                _ = adjustButton(of: card) {
                    $0.layer.opacity = 1
                    setupUIButton(with: card)
                }
            }
            else {
                print("Hidding "+String(buttonIndex))
                hideButton(at: buttonIndex)
            }
        }
        hideMatchedCards()
        highlightSelection()
        updateScoreLabel()
        markSuccessfulMatch()
        manageDealButton()
    }

    private func highlightSelection() {
        for card in game.cardsOnTable {
            _ = adjustButton(of: card) { $0.layer.borderWidth = 0 }
            if game.cardsSelected.contains(card) {
                _ = adjustButton(of: card) {
                    $0.layer.borderColor = buttonHightlightColor.cgColor
                    $0.layer.borderWidth = 3
                }
            }
        }
    }

    private func markSuccessfulMatch() {
        for matchCard in game.cardsMatched {
            _ = adjustButton(of: matchCard) {
                $0.layer.borderColor = buttonSuccessColor.cgColor
                $0.layer.borderWidth = 5
            }
        }
    }

    private func updateScoreLabel() {
        print("refreshed score")
        scoreLabel.text = "Score: " + String(Score.shared().playerScore)
    }

    private func setupUIButton(with card: Card) {
        guard let index = game.cardsOnTable.firstIndex(of: card) else {
            return
        }
        let button = cardButtons[index]
        var iconAttributes: [NSAttributedString.Key: Any] = [.font: UIFont.systemFont(ofSize: 30)]
        var colorAttributes: [[NSAttributedString.Key: Any]] =
            [[.foregroundColor: colors[0]],
                [.foregroundColor: colors[1]],
                [.foregroundColor: colors[2]]]
        var patternAttributes: [[NSAttributedString.Key: Any]] =
            [[.strokeWidth: -7],
                [.strokeWidth: -7, .foregroundColor: colors[card.color.rawValue].withAlphaComponent(0.5)],
                [.strokeWidth: 7]]
        var iconString = ""
        for _ in 0...card.quantity.rawValue {
            let shapeIndex = shapes.index(shapes.startIndex, offsetBy: card.shape.rawValue)
            iconString.append(shapes[shapeIndex])
        }
        iconAttributes.merge(dict: colorAttributes[card.color.rawValue])
        iconAttributes.merge(dict: patternAttributes[card.pattern.rawValue])

        let icon = NSAttributedString(string: iconString, attributes: iconAttributes)
        button.setAttributedTitle(icon, for: UIControl.State.normal)
    }

    private func hideMatchedCards() {
        for card in Card.allCombinations() where !game.cardsOnTable.contains(card){
            _ = adjustButton(of: card) { $0.layer.opacity = 0 }
        }
    }

    // TODO: find button by card
    private func adjustButton(of card: Card, with action: (UIButton) -> ()) -> UIButton? {
        if let buttonIndex = game.cardsOnTable.firstIndex(of: card) {
            action(cardButtons[buttonIndex])
            return cardButtons[buttonIndex]
        }
        return nil
    }

    private func hideButton(at index: Int) {
        cardButtons[index].layer.opacity = 0
    }

    private func manageDealButton() {
        dealCardsButton.isEnabled = !game.cardsInPack.isEmpty
    }
}
