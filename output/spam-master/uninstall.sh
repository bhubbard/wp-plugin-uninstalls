#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spam_master_keys_db_version'
wp option delete 'spam_master_connection'
wp option delete 'blacklist_keys_bk'
wp option delete 'spam_master_whitelist'
wp option delete 'spam_master_upgrade_to_6'

# Delete Transients
wp transient delete 'spam_master_license_data'
wp transient delete 'spam_master_repo_license_data'
wp transient delete 'spam_master_all_settings'

# Clear Cron Jobs
wp cron event delete 'spam_master_key_load'
wp cron event delete 'spam_master_tasks_load'
wp cron event delete 'spam_master_weekly_report_load'

