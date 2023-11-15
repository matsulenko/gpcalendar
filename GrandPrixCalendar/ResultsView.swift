//
//  HelloView.swift
//  GrandPrixCalendar
//
//  Created by Matsulenko on 04.11.2023.
//

import SpriteKit
import SwiftUI

struct ResultsView: View {
    
    var titleOn: Bool
    var rowHeight: Double
    
    var body: some View {
        NavigationView {
            ZStack {
                GeometryReader { geo in
                    SpriteView(scene: ResultsScene(size: geo.size))
                        .frame(width: geo.size.width,
                               height: geo.size.height)
                        .brightness(-0.2)
                        .blur(radius: 2.0, opaque: true)
                }
                .ignoresSafeArea(edges: [.top, .leading, .trailing])
                
                ScrollView {
                    ForEach(DriverChampionship.season2023) { driver in
                        ResultsRow(driver: driver)
                            .background(Color.clear)
                            .frame(height: rowHeight)
                    }
                    .padding()
                }
                .foregroundColor(.white)
                .navigationBarTitle(titleOn ? "Drivers championship" : "", displayMode: .large)
                .background(UINavigationConfiguration { nc in
                    nc.navigationBar.largeTitleTextAttributes = [.foregroundColor : UIColor.white]
                })
            }
            .navigationViewStyle(StackNavigationViewStyle())

        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct UINavigationConfiguration: UIViewControllerRepresentable {
    var config: (UINavigationController) -> Void = {_ in }
    
    func makeUIViewController(context: Context) -> UIViewController {
        let controller = UIViewController()
        DispatchQueue.main.async {
            if let nc = controller.navigationController {
                self.config(nc)
            }
        }
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
    }
}

#Preview {
    ResultsView(titleOn: true, rowHeight: 50)
}
