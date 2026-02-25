#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wgo_notify_requests_less_than_x_percent'
wp option delete 'wgo_days_to_store'
wp option delete 'wgo_db_version'
wp option delete 'wgo_limit_requests_per_minute'
wp option delete 'wgo_limit_requests_per_hour'
wp option delete 'wgo_im_behind_proxy'
wp option delete 'wgo_notification_email'
wp option delete 'wgo_save_payloads'
wp option delete 'wgo_save_payloads_matching_uri_regex'
wp option delete 'wgo_save_payloads_matching_payload_regex'
wp option delete 'wgo_notify_requests_more_than_sd'
wp option delete 'wgo_notify_requests_more_than_2sd'
wp option delete 'wgo_notify_requests_more_than_3sd'
wp option delete 'wgo_autoreload_datatables'
wp option delete 'wgo_waf_installed'

# Clear Cron Jobs
wp cron event delete 'wgo_cron_check_waf_install'
wp cron event delete 'wgo_cron_remove_old_data_hook'
wp cron event delete 'wgo_cron_fill_country_columns_hook'
wp cron event delete 'wgo_cron_notify_ddos_hook'
wp cron event delete 'wgo_cron_process_ban_rules_hook'

