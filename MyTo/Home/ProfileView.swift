//
//  ProfileView.swift
//  MyTo
//
//  Created by MacBook Pro on 07/06/22.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.editMode) var editMode
    @EnvironmentObject var vm: MarketViewModel
    @State private var defaultProfile = ProfileModel.default

        var body: some View {
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    if editMode?.wrappedValue == .active {
                                        Button("Cancel", role: .cancel) {
                                            defaultProfile = vm.profile
                                            editMode?.animation().wrappedValue = .inactive
                                        }
                                    }
                    Spacer()
                    EditButton()
                            }
                if editMode?.wrappedValue == .inactive {
                                ProfileTemplate(profile: vm.profile)
                            } else {
                                EditProfile(profile: $defaultProfile)
                                    .onAppear {
                                        defaultProfile = vm.profile
                                    }
                                    .onDisappear {
                                        vm.profile = defaultProfile
                                    }
                            }
            }
                   .padding()
        }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .environmentObject(dev.marketVM)
    }
}
