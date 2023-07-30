//
//  DataModel.swift
//  TableViewSectionPratice
//
//  Created by (^ㅗ^)7 iMac on 2023/07/25.
//

import UIKit

struct Model: SettingModel {
    var iconImage: String
    var cellName: String
    var cellState: String
}

extension Model {
    
    static let profileList : [Model] = [
        Model(iconImage: "01", cellName: "김준우", cellState: "Apple ID, iCloud+, 미디어 및 구입 항목")
    ]
    
    static let networkSettingList: [Model] = [
        Model(iconImage: "airplane", cellName: "에어플레인모드", cellState: ""),
        Model(iconImage: "wifi", cellName: "와이파이", cellState: "켬"),
        Model(iconImage: "b.circle.fill", cellName: "Bluetooth", cellState: "켬"),
        Model(iconImage: "antenna.radiowaves.left.and.right", cellName: "셀룰러", cellState: "켬"),
        Model(iconImage: "personalhotspot", cellName: "개인용 핫스팟", cellState: "끔"),
        Model(iconImage: "v.circle.fill", cellName: "VPN", cellState: "연결 안 됨"),
    ]
    
    static let alarmList: [Model] = [
        Model(iconImage: "bell.badge.fill", cellName: "알림", cellState: ""),
        Model(iconImage: "speaker.wave.3.fill", cellName: "사운드 및 햅틱", cellState: ""),
        Model(iconImage: "moon.fill", cellName:"집중 모드" , cellState: ""),
        Model(iconImage: "hourglass", cellName: "스크린 타임", cellState: "")
    ]
    
    static let settingList: [Model] = [
        Model(iconImage: "gear.circle", cellName: "일반", cellState: ""),
        Model(iconImage: "hare.fill", cellName: "제어 센터", cellState: ""),
        Model(iconImage: "textformat.size", cellName: "디스플레이 및 밝기", cellState: ""),
        Model(iconImage: "apps.ipad", cellName: "홈 화면", cellState: ""),
        Model(iconImage: "person.crop.circle", cellName: "손쉬운 사용", cellState: ""),
        Model(iconImage: "rectangle.on.rectangle", cellName: "배경화면", cellState: ""),
        Model(iconImage: "airtag", cellName: "Siri 및 검색", cellState: ""),
        Model(iconImage: "sos", cellName: "긴급 구조 요청", cellState: ""),
        Model(iconImage: "microbe.fill", cellName: "노출 알림", cellState: ""),
        Model(iconImage: "battery.100", cellName: "배터리", cellState: ""),
        Model(iconImage: "hand.raised.fill", cellName: "개인정보 보호 및 보안", cellState: ""),
       ]
    
    static let payList: [Model] = [
        Model(iconImage: "triangle", cellName:"App Store" , cellState: ""),
        Model(iconImage: "creditcard.fill", cellName:"지갑 및 Apple Pay" , cellState: ""),
    ]
    
    static let basicProductionList: [Model] = [
        Model(iconImage: "key.fill", cellName: "암호", cellState: ""),
        Model(iconImage: "envelope.fill", cellName: "Mail", cellState: ""),
        Model(iconImage: "person.circle", cellName: "연락처", cellState: ""),
        Model(iconImage: "calendar", cellName: "캘린더", cellState: ""),
        Model(iconImage: "note.text", cellName: "메모", cellState: ""),
        Model(iconImage: "checklist", cellName: "미리 알림", cellState: ""),
        Model(iconImage: "doc.text.image", cellName: "Freeform", cellState: ""),
        Model(iconImage: "waveform", cellName: "음성 메모", cellState: ""),
        Model(iconImage: "phone.fill", cellName: "전화", cellState: ""),
        Model(iconImage: "message.fill", cellName: "메시지", cellState: ""),
        Model(iconImage: "video.fill", cellName: "FaceTime", cellState: ""),
        Model(iconImage: "safari", cellName: "Safari", cellState: ""),
        Model(iconImage: "dollarsign.circle", cellName: "주식", cellState: ""),
        Model(iconImage: "cloud.sun.fill", cellName: "날짜", cellState: ""),
        Model(iconImage: "ellipsis.message", cellName: "번역", cellState: ""),
        Model(iconImage: "map.fill", cellName: "지도", cellState: ""),
        Model(iconImage: "signpost.right.and.left.fill", cellName: "나침반", cellState: ""),
        Model(iconImage: "ruler.fill", cellName: "측정", cellState: ""),
        Model(iconImage: "rectangle.fill.on.rectangle.fill", cellName: "단축어", cellState: ""),
        Model(iconImage: "heart.square.fill", cellName: "건강", cellState: ""),
    ]
    
    static let itunesList: [Model] = [
        Model(iconImage: "music.note", cellName: "음악", cellState: ""),
        Model(iconImage: "appletv.fill", cellName: "TV", cellState: ""),
        Model(iconImage: "photo.fill", cellName: "사진", cellState: ""),
        Model(iconImage: "camera.fill", cellName: "카메라", cellState: ""),
        Model(iconImage: "book.fill", cellName: "도서", cellState: ""),
        Model(iconImage: "antenna.radiowaves.left.and.right", cellName: "팟캐스트", cellState: ""),
        Model(iconImage: "graduationcap.fill", cellName: "iTunes U", cellState: ""),
        Model(iconImage: "gamecontroller.fill", cellName: "Game Center", cellState: ""),
    ]
    
    static let developerModeList: [Model] = [
        Model(iconImage: "hammer.fill", cellName: "개발자", cellState: ""),
    ]
}
