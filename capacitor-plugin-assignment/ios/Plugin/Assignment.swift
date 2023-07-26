import Foundation

@objc public class Assignment: NSObject {
    
    private let viewModel: ViewModelProtocol
    
    init(viewModel: ViewModelProtocol) {
        self.viewModel = viewModel
        super.init()
    }
    
    @objc func getLatestCover(onSuccess: @escaping StringsClosure, onError: @escaping ErrorClosure) {
        viewModel.getTracks(onSuccess: { trackList in
            trackList.data.forEach { print($0) }
            let covers = trackList.data.map {$0.cover}
            onSuccess(covers)
        }, onError: onError)
    }
}
