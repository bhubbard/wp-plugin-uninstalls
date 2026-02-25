#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pmip_api_token'
wp option delete 'pmip_zone_id'
wp option delete 'pmip_ruleset_id'
wp option delete 'pmip_rule_id'
wp option delete 'pmip_plugin_status'
wp option delete 'pmip_scan_interval'
wp option delete 'pmip_failed_attempts'
wp option delete 'pmip_block_duration'
wp option delete 'pmip_max_logs'
wp option delete 'pmip_newsletter_subscribed'
wp option delete 'pmip_newsletter_subscribers'
wp option delete 'pmip_blocked_ips'
wp option delete 'pmip_failed_attempts_log'
wp option delete 'pmip_ip_whitelist'

# Clear Cron Jobs
wp cron event delete 'pmip_check_ips'
wp cron event delete 'pmip_realtime_check_ips'
wp cron event delete 'pmip_realtime_interval'

