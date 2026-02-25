#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maspik_run_once'
wp option delete 'spamcounter'
wp option delete 'maspik_matrix_auto_enabled'
wp option delete 'maspik_columns_last_check'
wp option delete 'maspik_db_version'
wp option delete 'maspik_dlm_license'
wp option delete 'errorlog'
wp option delete 'spamapi'
wp option delete 'shere_data'
wp option delete 'maspik_api_requests'
wp option delete 'maspik_recent_ip_checks'
wp option delete 'maspik_api_id'
wp option delete 'maspik_spam_key'
wp option delete 'maspik_blacklist_merged'
wp option delete 'maspik_blacklist_merge_notice'
wp option delete 'maspik_matrix_enabled_notice'
wp option delete 'maspik_matrix_enabled_notice_dismissed'
wp option delete 'maspik_matrix_widget_hidden'
wp option delete 'maspik_licensing_version'
wp option delete 'contact-forms-anti-spam-license-data'

# Delete Transients
wp transient delete 'maspik_monthly_stats'
wp transient delete 'Mapik_dismissed_shereing_notice'
wp transient delete 'maspik_version_info'
wp transient delete 'maspik_blacklist_merge_notice_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%flash' OR option_name LIKE '_site_transient_%flash'"

# Clear Cron Jobs
wp cron event delete 'cfas_daily_api_refresh'
wp cron event delete 'weekly_to_r_maspik_request'
wp cron event delete 'weekly_spam_logs_request'
wp cron event delete 'maspik_cfas_dlm_license_check'
wp cron event delete 'maspik_dlm_license_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maspik_whats_new_seen_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maspik_whats_new_seen_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maspik_whats_new_seen_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maspik_whats_new_seen_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maspik_pointer_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maspik_pointer_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maspik_pointer_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maspik_pointer_dismissed'"
