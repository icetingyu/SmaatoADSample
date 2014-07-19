/* Copyright (c) 2012 Research In Motion Limited.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import bb.cascades 1.0

// This is the info page with some information about the application and a bit of decorations.

//NavigationPane {
//    id: navigation

Page {
    titleBar: TitleBar {
        title: qsTr("About SmattoADSample")
    }
    ScrollView {
        horizontalAlignment: HorizontalAlignment.Center
        Container {
            horizontalAlignment: HorizontalAlignment.Center

            layout: StackLayout {
            }
            // Descriptive Text
            Container {
                preferredWidth: 720
                leftPadding: 20
                rightPadding: 20
                topPadding: 20
                bottomPadding: 100
                horizontalAlignment: HorizontalAlignment.Right
                verticalAlignment: VerticalAlignment.Center

                Label {
                    text: qsTr("SmattoADSample")
                    horizontalAlignment: HorizontalAlignment.Center

                    multiline: true
                    textStyle.fontSize: FontSize.Large
                }

                Label 
                {
                    text: qsTr("Provide a sample of using Smaato Ad Service in both QML and C++ way")
                    multiline: true
                    horizontalAlignment: HorizontalAlignment.Center
                    textStyle.fontStyle: FontStyle.Italic
                    textStyle.textAlign: TextAlign.Center
                    textStyle.fontWeight: FontWeight.W100
                    textStyle.fontSize: FontSize.Large
                }
                
                Header 
                {
                    title: qsTr("DEVELOPED BY:")
                    bottomMargin: 50
                }
                
                ImageView 
                {
                    preferredWidth: 300
                    scalingMethod: ScalingMethod.AspectFit
                    imageSource: "asset:///icegod_large.png"
                    horizontalAlignment: HorizontalAlignment.Fill
                }
                
                Label 
                {
                    text: "Simon Hsu"
                    horizontalAlignment: HorizontalAlignment.Center
                    textStyle.fontWeight: FontWeight.W100
                    textStyle.fontSize: FontSize.Large
                }
                
                Label 
                {
                    text: "Taiwan BlackBerry Dev Group"
                    horizontalAlignment: HorizontalAlignment.Center
                    textStyle.fontSize: FontSize.Small
                }

                Label {
                    text:"Version 1.0"
                    textStyle.color: Color.DarkCyan
                    multiline: true
                    horizontalAlignment: HorizontalAlignment.Center
                    textStyle.fontWeight: FontWeight.W100
                }
                Label {
                    text:"- 20140625 -"
                    textStyle.color: Color.DarkCyan
                    multiline: true
                    horizontalAlignment: HorizontalAlignment.Center
                    textStyle.fontWeight: FontWeight.W100
                }
                Divider {
                    
                }
            }
            
        }
    }
    // The info page has an additional action, that is placed in the overflow menu to the right.
    // When the user pressed the "More info", they are directed to the MoreInfoPage.qml.
    actions: [
        InvokeActionItem {
            ActionBar.placement: ActionBarPlacement.OnBar
            query.invokeTargetId: "sys.pim.uib.email.hybridcomposer"
            query.invokeActionId: "bb.action.SENDEMAIL"
            query.mimeType: ""
            query.uri: "mailto:bsebadmin@gmail.com?subject=SmaatoADSample:%20Support&body=Suggestion:%20"
            query.invokerIncluded: true
            title: qsTr("Contact us")
            imageSource: "asset:///menuicon/icon_email.png"
        }
    ]
}
