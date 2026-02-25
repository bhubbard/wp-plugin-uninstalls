#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pfmswp-options'
wp option delete 'pfmswp-options-filesystem'
wp option delete 'installed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%installed'"
wp option delete 'pfmswp-options-access_control'
wp option delete 'pfmswp-options-system_security'
wp option delete 'pfmswp-options-monitoring'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%installed_plugins'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%installed_themes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%audit_passwords'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%activated_rename_login'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%audit_files'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%installed_htaccess'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%installed_htaccess_file'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%installed_robot_txt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%installed_robots_txt_file'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%last_version_downloaded_targz'"

# Delete Transients
wp transient delete 'update_core'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pfms_wp::bruteforce_attempts-%' OR option_name LIKE '_site_transient_pfms_wp::bruteforce_attempts-%'"
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'cron_clean_logs'

