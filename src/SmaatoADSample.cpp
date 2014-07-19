/* Copyright (c) 2014 Simon HSU. bsebadmin(at)gmail.com
 * From Taiwan BB Dev Group
 */
#include "SmaatoADSample.hpp"
#include "SSmaatoAd.h"
#include "SSmaatoAdView.h"
#include "SSmaatoAPI.h"
#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>
#include <bb/PpsObject>
#include <bb/cascades/Container>
#include <bb/cascades/StackLayout>
#include <bb/cascades/StackLayoutProperties>
#include <bb/cascades/LayoutOrientation>
#include <bb/cascades/Button>

using namespace bb::cascades;
using namespace bb::system;

SmaatoADSample::SmaatoADSample(bb::cascades::Application *app) :
		QObject(app) {
	// create scene document from main.qml asset
	// set parent to created document to ensure it exists for the whole application lifetime
	qmlRegisterType<SSmaatoAdView>("smaatosdk", 1, 0, "SSmaatoAdView");
	qmlRegisterType<SSmaatoAPI>("smaatoapi", 1, 0, "SSmaatoAPI");
    initFullUI();
}


//! [1]

void SmaatoADSample::initFullUI() {
	QmlDocument *qml = QmlDocument::create("asset:///main.qml");
	qml->setContextProperty("_app", this);
	AbstractPane *root = qml->createRootObject<AbstractPane>();
	Application::instance()->setScene(root);

    Container *mainContainter = root->findChild<Container*>("_mainContainer");

	SSmaatoAdView* _adView = new SSmaatoAdView();
	_adView->setAdSpaceId("0");
	_adView->setPublisherId("0");
	_adView->setAdViewSize(SSmaatoAdView::AdViewSizeNormal);
	_adView->setFormat(1);
	_adView->setCoppa(0);
	_adView->setGender(SSmaatoAPI::Male);
	_adView->setAutoRefreshPeriod(30);
    _adView->setScale(2.4,2.4);
    _adView->setPreferredWidth(720);
    _adView->setTranslationY(40);
	_adView->updateAd();
	mainContainter->add(_adView);
}
