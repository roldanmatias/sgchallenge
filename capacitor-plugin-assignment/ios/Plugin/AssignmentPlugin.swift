import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(AssignmentPlugin)
public class AssignmentPlugin: CAPPlugin {
    
    private enum Constant {
        static let url = "https://public.softgames.com/code-challenge/manifest.json"
    }
    
    private lazy var implementation: Assignment = {
        let url = URL(string: Constant.url)!
        let repository = Repository(url: url)
        let viewModel = ViewModel(repository: repository)
        return Assignment(viewModel: viewModel)
    }()
    
    @objc func getLatestCover(_ call: CAPPluginCall) {
        implementation.getLatestCover { covers in
            call.resolve([
                "value": covers
            ])
        } onError: { error in
            call.reject(error.localizedDescription, nil, error)
        }
    }
}
