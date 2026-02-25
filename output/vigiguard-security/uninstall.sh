#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vigiguard_security_settings'
wp option delete 'vigiguard_security_keep_data_on_uninstall'
wp option delete 'vigiguard_last_file_check'
wp option delete 'vigiguard_security_db_version'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'vigiguard_security_settings_saved'
wp transient delete 'vigiguard_security_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vigiguard_lockout_%' OR option_name LIKE '_site_transient_vigiguard_lockout_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vigiguard_login_attempts_%' OR option_name LIKE '_site_transient_vigiguard_login_attempts_%'"

# Clear Cron Jobs
wp cron event delete 'vigiguard_security_daily_cleanup'
wp cron event delete 'vigiguard_security_weekly_file_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vigiguard_dismissed_headers_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vigiguard_dismissed_headers_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vigiguard_dismissed_headers_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vigiguard_dismissed_headers_notice'"
