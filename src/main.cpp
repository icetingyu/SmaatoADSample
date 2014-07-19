// Default empty project template
#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>
#include <QLocale>
#include <QTranslator>
#include <Qt/qdeclarativedebug.h>
#include <QTextCodec>
#include "SmaatoADSample.hpp"


using namespace bb::cascades;

void myMessageOutput(QtMsgType type, const char* msg) {
	std::fprintf(stdout, "%s\n", msg);
	std::fflush(stdout);
}
Q_DECL_EXPORT int main(int argc, char **argv)
{
    // this is where the server is started etc
    Application app(argc, argv);
	qInstallMsgHandler(myMessageOutput);
	QTextCodec::setCodecForTr(QTextCodec::codecForName("UTF8"));
	QTextCodec::setCodecForLocale(QTextCodec::codecForName("UTF8"));
	QTextCodec::setCodecForCStrings(QTextCodec::codecForName("UTF8"));
    // localization support
    QTranslator translator;
    QString locale_string = QLocale().name();
    QString filename = QString( "SmaatoADSample_%1" ).arg( locale_string );
    if (translator.load(filename, "app/native/qm")) {
        app.installTranslator( &translator );
    }

    new SmaatoADSample(&app);

    // we complete the transaction started in the app constructor and start the client event loop here
    return Application::exec();
    // when loop is exited the Application deletes the scene which deletes all its children (per qt rules for children)
}
