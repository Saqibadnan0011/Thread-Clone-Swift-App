//
//  ActivityView.swift
//  ThreadClone
//
//  Created by apple on 16/08/2023.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            Text("Activity!")
                .foregroundColor(.white)
        }
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
