#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfa_sh_do_redirect'
wp option delete 'wpfa_cron_token'
wp option delete 'wpfa_block_user_enumeration'
wp option delete 'wpfa_block_new_admins'
wp option delete 'wpfa_disable_xmlrpc'
wp option delete 'wpfa_limit_login_attempts'
wp option delete 'wpfa_admin_bar_lock_status_display'
wp option delete 'wpfa_never_lock_content'
wp option delete 'wpfa_site_lock_auto_enable'
wp option delete 'wpfa_cached_state_last_built'
wp option delete 'wpfa_never_lock_plugins'
wp option delete 'wpfa_never_lock_root'
wp option delete 'folder_auditor_ignored'
wp option delete 'wpfa_scan_settings'
wp option delete 'fa_ignore_list'
wp option delete 'wpfa_report_settings'
wp option delete 'wpfa_never_lock_uploads'
wp option delete 'wpfa_settings'
wp option delete 'wpfa_ignored_db_items'
wp option delete 'wpfa_disable_all_user_creation'
wp option delete 'active_sitewide_plugins'
wp option delete 'wpfa_sh_options'
wp option delete 'wpfa_block_email_login'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%'"

# Delete Transients
wp transient delete 'wpfa_last_scan_result'
wp transient delete 'wpfa_last_report_result'

# Clear Cron Jobs
wp cron event delete 'site_lock_auto_renable'
wp cron event delete 'wpfa_run_infection_scan_event'
wp cron event delete 'wpfa_send_report_event'

