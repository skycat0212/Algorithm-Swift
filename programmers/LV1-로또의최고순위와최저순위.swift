//
//  LV1-로또의최고순위와최저순위.swift
//  AlgorithmStudy
//
//  Created by 김수진 on 2022/04/30.
//

import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let lottos = lottos.sorted()
    
    var zeroCnt = 0
    var matchCnt = 0
    
    for i in lottos {
        if i == 0 {
            zeroCnt += 1
        } else {
            if win_nums.firstIndex(of: i) != nil {
                matchCnt += 1
            }
        }
    }
    
    var min = matchCnt
    var max = matchCnt + zeroCnt
    
    if min == 0 { min = 1 }
    if max == 0 { max = 1 }
    
    min = 7 - min
    max = 7 - max
    
    return [max, min]
}

//solution([44, 1, 0, 0, 31, 25]    , [31, 10, 45, 1, 6, 19]    )
