#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blwp_blacklist_enabled'
wp option delete 'blwp_auto_report'
wp option delete 'blwp_whitelist'
wp option delete 'blwp_manual_blocked_ips'
wp option delete 'blwp_max_login_attempts'
wp option delete 'blwp_temp_block_enabled'
wp option delete 'blwp_temp_block_duration'
wp option delete 'blwp_secret_key_enabled'
wp option delete 'blwp_secret_key'
wp option delete 'blwp_user_block_enabled'
wp option delete 'blwp_blocked_usernames'
wp option delete 'blwp_recaptcha_enabled'
wp option delete 'blwp_recaptcha_site_key'
wp option delete 'blwp_recaptcha_secret_key'
wp option delete 'blwp_block_xmlrpc'
wp option delete 'blwp_xmlrpc_log_attempts'
wp option delete 'blwp_max_xmlrpc_attempts'
wp option delete 'blwp_disable_dangerous_xmlrpc'
wp option delete 'blwp_maxmind_enabled'
wp option delete 'blwp_maxmind_account_id'
wp option delete 'blwp_maxmind_api_key'
wp option delete 'blwp_blocked_countries'
wp option delete 'blwp_third_party_blacklists'
wp option delete 'blwp_temp_blocked_ips'
wp option delete 'blwp_unblock_tokens'
wp option delete 'blwp_blacklisted_ips'
wp option delete 'blwp_last_update'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_blwp_failed_attempts_%' OR option_name LIKE '_site_transient_blwp_failed_attempts_%'"

# Clear Cron Jobs
wp cron event delete 'blwp_update_blacklist_hook'

