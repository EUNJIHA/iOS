import Foundation
import RxSwift

let disposeBag = DisposeBag()

let input = PublishSubject<Int?>()
let list: [Int] = [1]

input
    .flatMap{
        $0 == nil ? Observable.empty() : Observable.just($0)
    }
    .map { $0! }
    .skip(while: { $0 != 0 })
    .take(11)
    .toArray()
    .asObservable()
    .map {
        $0.map {"\($0)"}
    }
    .map { numbers in
        var numberList = numbers
        numberList.insert("-", at: 3)
        numberList.insert("-", at: 8)
        let number = numberList.reduce("", +)
        return number
    }
    .subscribe(onNext: {
        print($0)
    })
    .disposed(by: disposeBag)

input.onNext(10)
input.onNext(0)
input.onNext(nil)
input.onNext(1)
input.onNext(0)
input.onNext(nil)
input.onNext(9)
input.onNext(7)
input.onNext(6)
input.onNext(0)
input.onNext(5)
input.onNext(0)
input.onNext(7)
input.onNext(2)
