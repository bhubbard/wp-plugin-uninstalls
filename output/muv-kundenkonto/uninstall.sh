#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'muv-kk-api-key'
wp option delete 'muv-kk-zugang-loeschen'
wp option delete 'muv-kk-erlaube-pseudo-login'
wp option delete 'muv-kk-login-domain'
wp option delete 'muv-kk-logout'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-betreff'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-typ'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-html'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-text'"
wp option delete 'muv-kk-email-von-name'
wp option delete 'muv-kk-email-von-mail'
wp option delete 'muv-kk-email-vorlage-logo'
wp option delete 'muv-kk-email-vorlage-footer'
wp option delete 'muv-kk-email-vorlage-color'
wp option delete 'muv-kk-email-vorlage-color-text'
wp option delete 'muv-kk-email-vorlage-bgcolor-body'
wp option delete 'muv-kk-email-vorlage-bgcolor-content'
wp option delete 'muv-kk-email-vorlage-konto-aktivieren-betreff'
wp option delete 'muv-kk-email-vorlage-konto-aktivieren-typ'
wp option delete 'muv-kk-email-vorlage-konto-aktivieren-text'
wp option delete 'muv-kk-email-vorlage-konto-aktivieren-html'
wp option delete 'muv-kk-email-vorlage-pwd-vergessen-betreff'
wp option delete 'muv-kk-email-vorlage-pwd-vergessen-typ'
wp option delete 'muv-kk-email-vorlage-pwd-vergessen-text'
wp option delete 'muv-kk-email-vorlage-pwd-vergessen-html'
wp option delete 'muv-kk-email-vorlage-pwd-geaendert-betreff'
wp option delete 'muv-kk-email-vorlage-pwd-geaendert-typ'
wp option delete 'muv-kk-email-vorlage-pwd-geaendert-text'
wp option delete 'muv-kk-email-vorlage-pwd-geaendert-html'
wp option delete 'muv-kk-email-vorlage-email-aktivieren-betreff'
wp option delete 'muv-kk-email-vorlage-email-aktivieren-typ'
wp option delete 'muv-kk-email-vorlage-email-aktivieren-text'
wp option delete 'muv-kk-email-vorlage-email-aktivieren-html'
wp option delete 'muv-kk-email-vorlage-email-geaendert-betreff'
wp option delete 'muv-kk-email-vorlage-email-geaendert-typ'
wp option delete 'muv-kk-email-vorlage-email-geaendert-text'
wp option delete 'muv-kk-email-vorlage-email-geaendert-html'
wp option delete 'muv-kk-email-vorlage-konto-loeschen-betreff'
wp option delete 'muv-kk-email-vorlage-konto-loeschen-typ'
wp option delete 'muv-kk-email-vorlage-konto-loeschen-text'
wp option delete 'muv-kk-email-vorlage-konto-loeschen-html'

# Clear Cron Jobs
wp cron event delete 'muv-kk-cron-delete-accounts'

