#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prontocookie_app_key'
wp option delete 'prontocookie_app_secret'
wp option delete 'prc_disable_sslverify'
wp option delete 'prc_site_configuration'
wp option delete 'prntck_disable_sslverify'
wp option delete 'prntck_site_configuration'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-prntck-logger-settings'"

