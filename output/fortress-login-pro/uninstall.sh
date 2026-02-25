#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fortress_last_promotion_date'
wp option delete 'fortress_smtp_verified'
wp option delete 'fortress_auto_rotation_enabled'
wp option delete 'fortress_auto_rotation_interval'
wp option delete 'fortress_auto_rotation_format'
wp option delete 'fortress_auto_rotation_length'
wp option delete 'fortress_auto_rotation_char_length'
wp option delete 'fortress_auto_rotation_include_numbers'
wp option delete 'fortress_last_rotation_date'
wp option delete 'fortress_active_slug'
wp option delete 'fortress_smtp_host'
wp option delete 'fortress_smtp_port'
wp option delete 'fortress_smtp_encryption'
wp option delete 'fortress_smtp_username'
wp option delete 'fortress_smtp_password'
wp option delete 'fortress_smtp_from_email'
wp option delete 'fortress_smtp_from_name'
wp option delete 'fortress_smtp_recipient_email'
wp option delete 'fortress_smtp_last_error'
wp option delete 'fortress_block_install_files'
wp option delete 'fortress_next_rotation_slug'
wp option delete 'fortress_login_attempt_logs'
wp option delete 'fortress_pending_slug_expiry'
wp option delete 'fortress_pending_slug_status'
wp option delete 'fortress_pending_slug'
wp option delete 'fortress_pending_slug_created'
wp option delete 'fortress_slug_history'
wp option delete 'fortress_flush_rewrite_rules'
wp option delete 'fortress_htaccess_error'
wp option delete 'fortress_slug_history_migrated'
wp option delete 'fortress_last_added_pending_slug'
wp option delete 'rewrite_rules'
wp option delete 'fortress_last_login_attempt'
wp option delete 'fortress_uninstall_error'

# Delete Transients
wp transient delete 'fortress_slug_rotated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fortress_login_slug_used_%' OR option_name LIKE '_site_transient_fortress_login_slug_used_%'"
wp transient delete 'fortress_slug_promoted'
wp transient delete 'fortress_smtp_test_result'

# Clear Cron Jobs
wp cron event delete 'fortress_check_pending_slug'
wp cron event delete 'fortress_delayed_flush_rules'
wp cron event delete 'fortress_daily_rotation_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fortress_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fortress_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fortress_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fortress_last_login'"
