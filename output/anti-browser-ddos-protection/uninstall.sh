#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'abdp_blocked_bots'
wp option delete 'abdp_excluded_bots'
wp option delete 'abdp_bot_ip_ranges'
wp option delete 'abdp_log_expires_days'
wp option delete 'abdp_blocked_ips'
wp option delete 'abdp_banned_ips'
wp option delete 'abdp_high_traffic_bots'
wp option delete 'abdp_max_requests'
wp option delete 'abdp_time_window'
wp option delete 'abdp_ban_threshold'
wp option delete 'abdp_ban_duration'
wp option delete 'abdp_bot_max_requests'

# Clear Cron Jobs
wp cron event delete 'abdp_cleanup_logs_event'

