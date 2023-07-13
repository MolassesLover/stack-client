#ifndef STACK_THEME_H
#define STACK_THEME_H

#include "theme.h"

namespace OCC {

class StackTheme : public Theme
{

public:
    StackTheme() {};

    bool linkSharing() const override {
        return true;
    }

    bool userGroupSharing() const override {
        return false;
    }

    bool showVirtualFilesOption() const override {
        return false;
    }

    bool enableExperimentalFeatures() const override {
        return false;
    }

    QColor wizardHeaderBackgroundColor() const override {
        // STACK color #5252c5
        return QColor(82, 82, 197);
    }

    QColor wizardHeaderTitleColor() const override {
        return QColor(255, 255, 255);
    }

    QColor wizardHeaderSubTitleColor() const override {
        return QColor(255, 255, 255);
    }

    bool allowDarkTheme() const {
        return true;
    }

    bool systrayUseMonoIcons() const {
        return true;
    }

    bool aboutShowCopyright() const {
        return false;
    }

    QIcon wizardHeaderLogo() const override {
        return themeUniversalIcon(QStringLiteral("wizard_logo"));
    }

    QIcon aboutIcon() const override {
        return themeUniversalIcon(QStringLiteral("stack-icon"));
    }

    QString helpUrl() const override {
        return QStringLiteral("https://www.transip.nl/support");
    }

    QString wizardUrlHint() const override {
        return QStringLiteral("https://example.stack.storage");
    }

    qint64 newBigFolderSizeLimit() const override {
        return 2048;
    }

    QString about() const override {
        return tr(
            "<h2>STACK client</h2>"
            "<p>Versie %1. Zie <a href='%2'>%3</a> voor meer informatie.</p>"
            "<p>Deze release word je aangeboden door TransIP B.V.</p>"
            "<h3>Changelog</h3>"
            "<p>Klik <a href='%4'>hier</a> om te zien wat er veranderd is in deze versie van de applicatie.</p>"
            "<hr>"
            "<p><small>By Klaas Freitag, Daniel Molkentin, Olivier Goffart, Markus Götz,<br/>"
            "&nbsp;&nbsp;&nbsp; Jan-Christoph Borchardt, Thomas Müller, Dominik Schmidt, Michael Stingl, Hannah von Reth, and others.</small></p>"
            "<p>Copyright ownCloud GmbH</p>"
            "<p>Licensed under the GNU General Public License (GPL) Version 2.0.<br/>"
            "%5 and the %5 logo are registered trademarks of %5 in the <br/>"
            "United States, other countries, or both.</p>"
        )
        .arg(
            Utility::escape(version()),
            Utility::escape(QStringLiteral("https://" APPLICATION_DOMAIN)),
            Utility::escape(QStringLiteral(APPLICATION_DOMAIN)),
            Utility::escape(QStringLiteral("https://www.transip.nl/knowledgebase/artikel/5558-changelog-van-de-desktopapplicatie/")),
            Utility::escape(QStringLiteral("ownCloud GmbH"))
        );
    }
    
    ;

private:
};
}
#endif
