#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'admintosh_last_theme_change'
wp option delete 'admintosh_last_activated_plugin'
wp option delete 'admintosh_last_registered_user'
wp option delete 'admintosh_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'admintosh_activity_logs_db_table'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'admintosh_lh_database_table'

# Delete Transients
wp transient delete 'admintosh_domain_whois_info'
wp transient delete 'update_core'
wp transient delete 'update_themes'
wp transient delete 'update_plugins'

# Clear Cron Jobs

