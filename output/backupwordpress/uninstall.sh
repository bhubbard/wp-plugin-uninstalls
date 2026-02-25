#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hmbkp_enable_support'
wp option delete 'hmbkp_wp_cron_test_failed'
wp option delete 'hmbkp_hide_info_notice'
wp option delete 'hmbkp_hide_rate_notice'
wp option delete 'hmbkp_notices'
wp option delete 'hmbkp_plugin_version'
wp option delete 'cron'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hmbkp_schedule_%'"
wp option delete 'wpr_api_key'
wp option delete 'bkpwp_max_backups'
wp option delete 'bkpwppath'
wp option delete 'hmbkp_path'
wp option delete 'hmbkp_files_only'
wp option delete 'hmbkp_database_only'
wp option delete 'hmbkp_schedule_frequency'
wp option delete 'hmbkp_disable_automatic_backup'
wp option delete 'hmbkp_max_backups'
wp option delete 'hmbkp_excludes'
wp option delete 'hmbkp_email_address'
wp option delete 'hmbkp_default_path'

# Delete Transients
wp transient delete 'hmbkp_root_size'
wp transient delete 'hmbkp_wp_cron_test_beacon'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hm_backdrop-%' OR option_name LIKE '_site_transient_hm_backdrop-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bwp_%' OR option_name LIKE '_site_transient_bwp_%'"
wp transient delete 'hmbkp_schedules'
wp transient delete 'hmbkp_database_size'
wp transient delete 'hmbkp_directory_filesizes_running'
wp transient delete 'hmbkp_plugin_data'
wp transient delete 'hmbkp_directory_filesizes'
wp transient delete 'hmbkp_settings_errors'

# Clear Cron Jobs
wp cron event delete 'hmbkp_schedule_hook'
wp cron event delete 'bkpwp_schedule_bkpwp_hook'

