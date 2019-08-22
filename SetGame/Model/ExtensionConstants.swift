//
//  Constants.swift
//  SetGame
//
//  Created by Lukas on 19/07/2019.
//  Copyright © 2019 Lukas Lizal. All rights reserved.
//

import Foundation
import UIKit

/**
 All Constants of this project.
 
 - author:
 Lukas Lizal
 */
extension GraphicalSetViewController {
    struct Constants {
        static let mainThemeBackgroundColor: UIColor = #colorLiteral(red: 0.3580985833, green: 0.3581614372, blue: 0.3580903332, alpha: 1)
        static let menuButtonsLabelTint: UIColor = #colorLiteral(red: 0.2827693394, green: 0.2828189714, blue: 0.2827628248, alpha: 1)
        static let scoreGradeFirstSuffix: String = " 🧠"
        static let scoreGradeSecondSuffix: String = " 🥇"
        static let scoreGradeThirdSuffix: String = " 🥈"
        static let scoreGradeFourthSuffix: String = " 🥉"
        static let scoreGradeFifthSuffix: String = " 🥔"
        static let scoreZeroValue: String = "💩"
    }
}

extension MenuViewController {
    struct Constants {
        static let mainThemeBackgroundColor: UIColor = #colorLiteral(red: 0.590934428, green: 0.5910381495, blue: 0.5909208137, alpha: 1)
        static let gameTitleTextColor: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}


extension UIView {
    struct Constants {
        static let shakeViewAmplitude: CGFloat = 20
        static let shakeViewAmplitudeMultiplier: CGFloat = 0.02
        static let shakeViewDuration: TimeInterval = 0.6
        static let shakeViewSpringDamping: CGFloat = 0.3
        static let shakeViewInitialSpringVelocity: CGFloat = 1
        static let nodViewAmplitude: CGFloat = 12
        static let nodViewDuration: TimeInterval = 0.4
        static let nodViewSpringDamping: CGFloat = 1
        static let nodViewInitialSpringVelocity: CGFloat = 1
    }
}

extension UIFactory {
    struct Constants {
        static let scoreLabelThemeColor: UIColor = #colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1)
        static let menuButtonEnabledColor: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        static let menuButtonDisabledColor: UIColor = #colorLiteral(red: 0.6839908859, green: 0.6711440114, blue: 0.6311190294, alpha: 1)
        static let buttonNormalTextColor: UIColor = #colorLiteral(red: 0.3332971931, green: 0.3333585858, blue: 0.3332890868, alpha: 1)
        static let buttonDisabledTextColor: UIColor = #colorLiteral(red: 0.5136986301, green: 0.5136986301, blue: 0.5136986301, alpha: 1)
        static let buttonBackgroundColor: UIColor = UIColor.white
        static let cornerRoundnessFactor: CGFloat = 1
        static let shadowRadius: CGFloat = 15
        static let shadowOpacity: Float = 0.7
        static let shadowOffset: CGSize = CGSize(width: 0, height: 15)
        static let shadowInsets: CGSize = CGSize(width: 2, height: 20)
        static let shadowColor: CGColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}

extension AnimationFactory {
    struct Constants {
        static let insetHideBehindButton: CGFloat = -3
        static let animationDealCardDuration: TimeInterval = 0.6
        static let animationDealCardOptions: UIView.AnimationOptions = [.curveEaseOut, .allowUserInteraction, .allowAnimatedContent]
        static let animationRearrangeCardDuration: TimeInterval = 0.25
        static let animationRearrangeCardOptions: UIView.AnimationOptions = [.curveEaseOut, .allowUserInteraction, .allowAnimatedContent]
        static let animationNewGameDuration: TimeInterval = 0.8
        static let animationNewGameOptions: UIView.AnimationOptions = [.curveEaseOut, .allowUserInteraction, .allowAnimatedContent]
        static let animationSuccessMatchDuration: TimeInterval = 0.3
        static let animationSuccessMatchDelay: TimeInterval = 0.0
        static let animationSuccessMatchOptions: UIView.AnimationOptions = [.curveEaseIn, .allowUserInteraction, .allowAnimatedContent]
        static let animationButtonScaleDown: CGFloat = 0.8
        static let animationButtonScaleDownDuration: Double = 0.3
        static let animationButtonDownDamping: CGFloat = 0.3
        static let animationButtonScaleUp: CGFloat = 0.75
        static let animationButtonScaleUpDuration: Double = 0.15
        static let animationButtonUpDamping: CGFloat = 0.8
        static let animationTouchCircleDuration: TimeInterval = 0.6
        static let animationTouchCircleOptions: UIView.AnimationOptions = [.curveEaseOut, .allowUserInteraction, .allowAnimatedContent]
        static let animationUnsuccesfullMatchColorDuration: TimeInterval = 2
        static let animationUnsuccesfullMatchColorOptions: UIView.AnimationOptions = [.curveEaseOut, .allowUserInteraction, .allowAnimatedContent]
    }
}

extension PlayingCardView {
    struct Constants {
        static let symbolAspectRatio: CGFloat = 12 / 5
        static let cardFrameAspectRatio: CGFloat = 5 / 7
        static let symbolInsetsRatio: CGFloat = 1 / 20
        static let cardColor: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        static let selectedHighlightColor: [UIColor] =  [#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)]  // [#colorLiteral(red: 0.8684809835, green: 1, blue: 0.7802248099, alpha: 1), #colorLiteral(red: 0.9276167073, green: 0.8917697381, blue: 1, alpha: 1), #colorLiteral(red: 1, green: 0.8072766262, blue: 0.8798607505, alpha: 1)] //[#colorLiteral(red: 0.9381606324, green: 1, blue: 0.8966631661, alpha: 1), #colorLiteral(red: 0.9276167073, green: 0.8917697381, blue: 1, alpha: 1), #colorLiteral(red: 1, green: 0.9525627755, blue: 0.8814069386, alpha: 1)] //[#colorLiteral(red: 0.7952026993, green: 0.8904109589, blue: 0.7313129523, alpha: 1), #colorLiteral(red: 0.8726476846, green: 0.8095779573, blue: 1, alpha: 1), #colorLiteral(red: 1, green: 0.8483725166, blue: 0.9054789686, alpha: 1)] // [#colorLiteral(red: 0.884876195, green: 1, blue: 0.8076220702, alpha: 1), #colorLiteral(red: 0.8818091884, green: 0.8232765874, blue: 1, alpha: 1), #colorLiteral(red: 1, green: 0.8072766262, blue: 0.8798607505, alpha: 1)]
        static let unsuccessfulHighlightColor: UIColor = #colorLiteral(red: 1, green: 0.6670580554, blue: 0.6670580554, alpha: 1)
        static let selectedSuccessColor: UIColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        static let cornerRadiusToWidthRatio: CGFloat = 1 / 10
    }
}

extension PlayingCardButton {
    struct Constants {
        static let buttonColor: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        static let outlineColor: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        static let playingCardsSpacing: CGFloat = 4
        static let cornerRadiusToWidthRatio: CGFloat = 1 / 10
    }
}

extension ShapeView {
    struct Constants {
        static let symbolInsetsRatio: CGFloat = 1 / 20
        static let symbolStrokeWidthToSymbolHeight: CGFloat = 1 / 10
        static let hatchStep: CGFloat = 6
        static let hatchStrokeWidth: CGFloat = 3
        static let shapeColors: [UIColor] = [#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)] //[#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.897260274, green: 0.680268734, blue: 0, alpha: 1)] //[#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)]
    }
}

extension Game {
    struct Constants {
        static let cheatModeIsActive = false
        static let initialCardCountOnTable: Int = 21 // 20 cards is a maximum amount of card that can not create any set.
    }
}

//
//extension UIColor {
//    /**
//     Three colors palette where each color is ordered and retrievable by a number.
//     */
//    struct ColorPalette {
//        internal static var firstColor: UIColor { return #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1) }
//        internal static var secondColor: UIColor { return #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1) }
//        internal static var thirdColor: UIColor { return #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1) }
//
//        internal static func color(of type: Int) -> UIColor {
//            switch(type) {
//            case 0:
//                return firstColor
//            case 1:
//                return secondColor
//            case 2:
//                return thirdColor
//            default:
//                return #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
//            }
//        }
//    }
//}
