/*
 * ‌
 * Hedera Swift SDK
 * ​
 * Copyright (C) 2022 - 2023 Hedera Hashgraph, LLC
 * ​
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ‍
 */

import Hedera
import SwiftDotenv

@main
public enum Program {
    public static func main() async throws {
        let env = try Dotenv.load()
        let client = try Client.forName(env.networkName)

        // Defaults the operator account ID and key such that all generated transactions will be paid for
        // by this account and be signed by this key
        client.setOperator(env.operatorAccountId, env.operatorKey)

        let response = try await FileContentsQuery()
            .fileId(env.exchangeRatesFile)
            .execute(client)

        let rates = try ExchangeRates.fromBytes(response.contents)

        print("Current numerator:", rates.currentRate.cents)
        print("Current denominator:", rates.currentRate.hbars)
        print("Current expiration time:", rates.currentRate.expirationTime)
        print("Current Exchange Rate:", rates.currentRate.exchangeRateInCents)

        print("Next numerator:", rates.nextRate.cents)
        print("Next denominator:", rates.nextRate.hbars)
        print("Next expiration time:", rates.nextRate.expirationTime)
        print("Next Exchange Rate:", rates.nextRate.exchangeRateInCents)
    }
}

extension Environment {
    public var operatorAccountId: AccountId {
        AccountId(self["OPERATOR_ACCOUNT_ID"]!.stringValue)!
    }

    public var operatorKey: PrivateKey {
        PrivateKey(self["OPERATOR_KEY"]!.stringValue)!
    }

    public var networkName: String {
        self["HEDERA_NETWORK"]?.stringValue ?? "testnet"
    }

    public var exchangeRatesFile: FileId {
        // we really do want to abort if the value is invalid
        // swiftlint:disable:next force_try
        try! (self["HEDERA_EXCHANGE_RATES_FILE"]?.stringValue).map(FileId.fromString) ?? FileId.exchangeRates
    }
}
