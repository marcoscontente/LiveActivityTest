//
//  LiveActivityExtension.swift
//  LiveActivityExtension
//
//  Created by Marcos Contente on 19/05/25.
//

import WidgetKit
import SwiftUI

struct LiveActivityExtension: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: ActivityModel.self) { context in
            ZStack {
                RoundedRectangle(cornerRadius: 16).fill(.black)
                VStack {
                    HStack {
                        Image(systemName: context.attributes.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.yellow)
                            .frame(width: 40, height: 40)

                        Spacer()

                        VStack(alignment: .leading) {
                            HStack {
                                Text(
                                    timerInterval: Date()...Date().addingTimeInterval(context.attributes.timeLeft),
                                    countsDown: true,
                                    showsHours: false
                                )
                                .font(.title)
                                .foregroundColor(.yellow)

                                Spacer()

                                Text(context.attributes.text)
                                    .foregroundColor(.yellow)
                                    .font(.subheadline)
                            }

                            Text("I'm Live Activity, Say Hello!")
                                .font(.footnote)
                                .foregroundStyle(.yellow)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)

                            Spacer()
                        }

                        .frame(maxWidth: .infinity, alignment: .bottom)
                    }
                    .padding(16)
                }
            }
        } dynamicIsland: { context in
            DynamicIsland {
                DynamicIslandExpandedRegion(.leading) {
                    Image(systemName: context.attributes.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.yellow)
                        .frame(width: 20, height: 20)
                }
                DynamicIslandExpandedRegion(.center) {
                    VStack {
                        HStack {
                            Text(
                                timerInterval: Date()...Date().addingTimeInterval(context.attributes.timeLeft),
                                countsDown: true,
                                showsHours: false
                            )
                            .font(.title)
                            .foregroundColor(.yellow)
                            .multilineTextAlignment(.leading)

                            Spacer()

                            Text("Dynamic Island")
                                .foregroundColor(.yellow)
                                .font(.subheadline)
                        }

                        Text(context.attributes.text)
                            .font(.footnote)
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .lineLimit(0)
                    }
                }
            } compactLeading: {
                Image(systemName: context.attributes.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.yellow)
                    .frame(width: 20, height: 20)
            } compactTrailing: {
                Text(
                    timerInterval: Date()...Date().addingTimeInterval(context.attributes.timeLeft),
                    countsDown: true,
                    showsHours: false
                )
                .font(.caption2)
                .foregroundColor(.yellow)
                .multilineTextAlignment(.leading)
                .frame(width: 40)
            } minimal: {
                Text(
                    timerInterval: Date()...Date().addingTimeInterval(context.attributes.timeLeft),
                    countsDown: true,
                    showsHours: false
                )
                .font(.caption2)
                .multilineTextAlignment(.leading)
                .frame(width: 40)
            }
            .keylineTint(.cyan)
        }
    }
}
