//
//  Team+OptionSelectorCell.swift
//  LazyMan-iOS
//
//  Created by Nick Thompson on 4/7/19.
//  Copyright © 2019 Nick Thompson. All rights reserved.
//

import Foundation
import OptionSelector

extension Team: OptionSelectorCell {
    var title: String {
        return self.name
    }

    var description: String {
        return ""
    }

    var image: UIImage? {
        return self.logo
    }
}
