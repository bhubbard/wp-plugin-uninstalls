#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ip2location_redirection_api_key'
wp option delete 'ip2location_redirection_database'
wp option delete 'ip2location_redirection_debug_log_enabled'
wp option delete 'ip2location_redirection_download_ipv4_only'
wp option delete 'ip2location_redirection_enable_region_redirect'
wp option delete 'ip2location_redirection_enabled'
wp option delete 'ip2location_redirection_first_redirect'
wp option delete 'ip2location_redirection_ignore_query_string'
wp option delete 'ip2location_redirection_ip_whitelist'
wp option delete 'ip2location_redirection_lookup_mode'
wp option delete 'ip2location_redirection_noredirect_enabled'
wp option delete 'ip2location_redirection_private_key'
wp option delete 'ip2location_redirection_real_ip_header'
wp option delete 'ip2location_redirection_rules'
wp option delete 'ip2location_redirection_session_message'
wp option delete 'ip2location_redirection_skip_admins'
wp option delete 'ip2location_redirection_skip_bots'
wp option delete 'ip2location_redirection_token'
wp option delete 'icl_sitepress_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ip2location_redirection_%'"

# Clear Cron Jobs
wp cron event delete 'ip2location_redirection_hourly_event'
wp cron event delete 'ip2location_redirection_daily_event'

