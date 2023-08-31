//
//  UIViewController+.swift
//  SeSACFramework
//
//  Created by 서승우 on 2023/08/29.
//

import UIKit

extension UIViewController {

    public func sesacShowAlert(
        title: String,
        message: String,
        buttonTitle: String,
        buttonAction: @escaping (UIAlertAction) -> ()
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let cancel = UIAlertAction(
            title: "취소",
            style: .cancel
        )
        let confirm = UIAlertAction(
            title: buttonTitle,
            style: .default,
            handler: buttonAction
        )
        alert.addAction(cancel)
        alert.addAction(confirm)
        present(alert, animated: true)
    }

    public func sesacShowActivityViewController(
        image: UIImage,
        url: String,
        text: String
    ) {
        let vc = UIActivityViewController(
            activityItems: [image, url, text],
            applicationActivities: nil
        )
        vc.excludedActivityTypes = [.mail]
        present(vc, animated: true)
    }
}
