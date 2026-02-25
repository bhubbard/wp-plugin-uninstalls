#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'afop_plugin_version'
wp option delete 'afop_db_version'
wp option delete 'afop_settings'
wp option delete 'afop_blocked_disposable_domains'
wp option delete 'afop_delete_data_on_uninstall'
wp option delete 'afop_legacy_blocks_migrated'
wp option delete 'afop_all_blocked_ips'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'afop_ip_perm_block_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'afop_ip_block_data_%'"
wp option delete 'afop_all_blocked_emails'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'afop_email_perm_block_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'afop_email_block_data_%'"
wp option delete 'afop_all_blocked_users'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'afop_user_perm_block_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'afop_user_block_data_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'afop_temp_block_count_%'"

# Delete Transients
wp transient delete 'afop_admin_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_afop_fast_attempts_%' OR option_name LIKE '_site_transient_afop_fast_attempts_%'"

# Clear Cron Jobs
wp cron event delete 'afop_clean_logs_event'
wp cron event delete 'afop_auto_unblock_event'

