import Foundation
import RxSwift

// MARK: Basic
print("------Just------")
Observable<Int>.just(1)
    .subscribe(onNext: {
        print($0)
    })

print("------Of------")
Observable<Int>.of(1, 2, 3, 4, 5)
    .subscribe(onNext: {
        print($0)
    })

print("------From------")
Observable<Int>.from([1, 2, 3, 4, 5]) // only Array
    .subscribe(onNext: {
        print($0)
    })


// MARK: subscribe
print("------subscribe------")
Observable<Int>.of(1, 2, 3, 4, 5)
    .subscribe {
        print($0)
    }


print("------subscribe2------")
Observable<Int>.of(1, 2, 3, 4, 5)
    .subscribe {
        if let element = $0.element {
            print(element)
        }
    }

print("------subscribe3------")
Observable<Int>.of(1, 2, 3, 4, 5)
    .subscribe(onNext: {
        print($0)
    })

// MARK: else
print("------empty------") // 즉시 종료할 수 있는 Observable을 Return 하고 싶을 때, 의도적으로 0개의 값을 가지는 Observable을 Return 하고 싶을 때
Observable<Void>.empty()
    .subscribe{
        print($0)
    }

print("------never------")
Observable<Void>.never() // empty와의 차이점. debug를 통해
    .debug("never")
    .subscribe{
        print($0)
    }

print("------range------")
Observable.range(start: 1, count: 9)
    .subscribe(onNext: {
        print("2 * \($0) = \(2*$0)")
    })

// MARK: dispose - subscribe로 구독 했다면 구독 취소는?
print("------dispose------")
Observable.of(1, 2, 3)
    .subscribe{
        print($0)
    }
    .dispose()

// 여러 구독을 한 번에 구독 취소할 수 있도록 하는
// disposeBag 내의
// private var disposables = [Disposable]() 에 넣어줌
// 나중에 disposeBag 할당해제 하면 갖고 있던 disposables 들도 모두 해제
print("------disposeBag------")
let disposeBag = DisposeBag()
Observable.of(1, 2, 3)
    .subscribe {
        print($0)
    }
    .disposed(by: disposeBag)

// 실수로 dispose를 안해주거나 등.. 메모리 누수 일어날 수 있겠지
// Observable - subscribe - dispose -> 하나의 단위라고 알아두기

// MARK: Observable을 만드는 새로운 형태 


