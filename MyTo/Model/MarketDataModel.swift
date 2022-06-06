//
//  MarketDataModel.swift
//  MyTo
//
//  Created by MacBook Pro on 06/06/22.
//

import Foundation

// JSON data:
/*
  
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 13487,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 635,
     "total_market_cap": {
       "btc": 42699918.885000505,
       "eth": 707910331.7563239,
       "ltc": 20485975258.2889,
       "bch": 7171243838.983293,
       "bnb": 4386834023.62648,
       "eos": 1022400149685.0903,
       "xrp": 3336273476135.352,
       "xlm": 9181233497800.566,
       "link": 168830320732.9668,
       "dot": 138042491556.64056,
       "yfi": 174779216.55485475,
       "usd": 1352377378416.659,
       "aed": 4967417348662.228,
       "ars": 163788615151394.47,
       "aud": 1874092113952.725,
       "bdt": 124092725542510.36,
       "bhd": 509704272038.34705,
       "bmd": 1352377378416.659,
       "brl": 6480727635110.491,
       "cad": 1696960429682.4666,
       "chf": 1306822546424.696,
       "clp": 1100659376971967.5,
       "cny": 8990604811713.943,
       "czk": 31233562620123.637,
       "dkk": 9399321655396.418,
       "eur": 1263573517862.9275,
       "gbp": 1078059798601.2455,
       "hkd": 10610097008028.57,
       "huf": 489988059609580.5,
       "idr": 19510672920311940,
       "ils": 4486315858177.413,
       "inr": 105111511285631.64,
       "jpy": 177473565271520.8,
       "krw": 1692419118045820.8,
       "kwd": 414065496214.09894,
       "lkr": 489597044033403.6,
       "mmk": 2504174352664962.5,
       "mxn": 26426861799112.453,
       "myr": 5936936691249.128,
       "ngn": 561288702914775.94,
       "nok": 12696470446693.984,
       "nzd": 2075054040008.059,
       "php": 71517096714118.88,
       "pkr": 271009022368551.75,
       "pln": 5789681728022.869,
       "rub": 83712157019236.47,
       "sar": 5072480842436.676,
       "sek": 13197699369701.809,
       "sgd": 1859164572449.7615,
       "thb": 46434913209007.77,
       "try": 22413318139146.2,
       "twd": 39727959886035.84,
       "uah": 39930934149630.27,
       "vef": 135413546900.85992,
       "vnd": 31355841666954450,
       "zar": 20789126431441.598,
       "xdr": 983999247177.6115,
       "xag": 61067817662.044624,
       "xau": 732244731.5436982,
       "bits": 42699918885000.51,
       "sats": 4269991888500050.5
     },
     "total_volume": {
       "btc": 2196614.391076996,
       "eth": 36417072.04446867,
       "ltc": 1053861207.2963928,
       "bch": 368910710.6048021,
       "bnb": 225672155.80704764,
       "eos": 52595389894.90794,
       "xrp": 171628108942.88898,
       "xlm": 472310724604.00696,
       "link": 8685147931.333721,
       "dot": 7101327858.492905,
       "yfi": 8991177.322363013,
       "usd": 69570427512.93222,
       "aed": 255539137297.75125,
       "ars": 8425787180183.786,
       "aud": 96409028757.16122,
       "bdt": 6383709240496.908,
       "bhd": 26220746277.48661,
       "bmd": 69570427512.93222,
       "brl": 333388445684.7236,
       "cad": 87296833302.37233,
       "chf": 67226947662.15922,
       "clp": 56621283839950.22,
       "cny": 462504202105.9732,
       "czk": 1606749964109.8508,
       "dkk": 483529846279.3598,
       "eur": 65002085390.29545,
       "gbp": 55458692425.78155,
       "hkd": 545815832609.12225,
       "huf": 25206484023846.285,
       "idr": 1003688672846830,
       "ils": 230789805562.16418,
       "inr": 5407257540223.963,
       "jpy": 9129782858864.104,
       "krw": 87063214345805.03,
       "kwd": 21300795214.199535,
       "lkr": 25186368986998.59,
       "mmk": 128822385720316.86,
       "mxn": 1359478576417.737,
       "myr": 305414176781.7722,
       "ngn": 28874407131593.848,
       "nok": 653145261802.5612,
       "nzd": 106747124715.15529,
       "php": 3679058132952.6333,
       "pkr": 13941532775500.99,
       "pln": 297838931211.6,
       "rub": 4306409323909.6514,
       "sar": 260943924670.37668,
       "sek": 678930010210.825,
       "sgd": 95641110378.27345,
       "thb": 2388753919603.999,
       "try": 1153009618328.1084,
       "twd": 2043727732804.9172,
       "uah": 2054169349559.0513,
       "vef": 6966086906.869897,
       "vnd": 1613040372171728.8,
       "zar": 1069456230589.353,
       "xdr": 50619930051.40216,
       "xag": 3141515267.731207,
       "xau": 37668907.97687706,
       "bits": 2196614391076.996,
       "sats": 219661439107699.6
     },
     "market_cap_percentage": {
       "btc": 44.636574255168576,
       "eth": 17.134030083101685,
       "usdt": 5.379255169170136,
       "usdc": 4.013712454386151,
       "bnb": 3.7165097260757536,
       "ada": 1.5574028156345396,
       "xrp": 1.4510064744245033,
       "busd": 1.3450327076094726,
       "sol": 1.1057031485122093,
       "doge": 0.8227554946475257
     },
     "market_cap_change_percentage_24h_usd": 5.515702823148359,
     "updated_at": 1654525878
   }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String{
        if let item = totalMarketCap.first(where: { $0.key == "usd"}){
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String{
        if let item = totalVolume.first(where:{
            $0.key == "usd"
        }){
            return "$" + item.value.formattedWithAbbreviations()

        }
        return ""
    }
    
    var btcDominance: String{
        if let item = marketCapPercentage.first(where: { $0.key == "btc"}){
            return item.value.asPercentString()
        }
        return ""
    }
}
