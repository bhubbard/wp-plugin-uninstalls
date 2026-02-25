#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfais_last_core_report'
wp option delete 'sfais_last_content_report'
wp option delete 'sfais_backup_manual_found'
wp option delete 'sfais_backup_manual_age_ok'
wp option delete 'sfais_manual_strong_passwords'
wp option delete 'sfais_manual_2fa_enabled'
wp option delete 'sfais_last_quick_check'
wp option delete 'sfais_patch_dirlisting_last_report'
wp option delete 'sfais_last_quick_rating'
wp option delete 'sfais_patch_versioninfo'
wp option delete 'sfais_patch_xmlrpc'
wp option delete 'sfais_patch_dirlisting'
wp option delete 'sfais_patch_permissions_last_report'
wp option delete 'sfais_patch_permissions'
wp option delete 'sfais_patch_filemods'
wp option delete 'sfais_htaccess_safe'
wp option delete 'sfais_patch_fileedit'
wp option delete 'sfais_blocked_ips'
wp option delete 'active_sitewide_plugins'
wp option delete 'mhsf_optin_notice_dismissed'
wp option delete 'mhsf_show_optin_notice'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'mhsf_upgrade_error'
wp transient delete 'sfais_upgrade_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mhsf_fs_return_%' OR option_name LIKE '_site_transient_mhsf_fs_return_%'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

