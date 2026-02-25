#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'asbfg_log_retention_days'
wp option delete 'asbfg_blocked_ips'
wp option delete 'asbfg_blocked_emails'
wp option delete 'asbfg_blocked_domains'
wp option delete 'asbfg_blocked_countries'
wp option delete 'asbfg_blocked_text'
wp option delete 'asbfg_custom_ip_message'
wp option delete 'asbfg_custom_email_message'
wp option delete 'asbfg_custom_domain_message'
wp option delete 'asbfg_custom_country_message'
wp option delete 'asbfg_custom_text_message'

# Clear Cron Jobs
wp cron event delete 'asbfg_cleanup_old_logs'

