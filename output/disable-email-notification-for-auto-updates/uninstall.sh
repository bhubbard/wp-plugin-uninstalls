#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'itc_notice_dismissed_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_disable_plugin_updates'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_plugin_from_dashboard'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_disable-email-notification-for-auto-updates%' OR option_name LIKE '_site_transient_disable-email-notification-for-auto-updates%'"

