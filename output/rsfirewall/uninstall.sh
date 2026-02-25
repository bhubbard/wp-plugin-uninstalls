#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rsfirewall_log_emails_count'
wp option delete 'rsfirewall_log_emails_send_after'
wp option delete 'rsfirewall_version'
wp option delete 'rsfirewall_lite_version'
wp option delete 'rsfirewall_backend_password'
wp option delete 'rsfirewall_system_check'
wp option delete 'rsfirewall_active_scanner'
wp option delete 'rsfirewall_core_scanner'
wp option delete 'rsfirewall_lockdown'
wp option delete 'rsfirewall_logging'
wp option delete 'rsfirewall_import'
wp option delete 'rsfirewall_updates'
wp option delete 'rsfirewall_grade'
wp option delete 'rsfirewall_system_check_last_run'
wp option delete 'rsfirewall_admin_users'
wp option delete 'rsfirewall_hardening'

# Delete Transients
wp transient delete 'global_admin_notice'
wp transient delete 'update_plugins'
wp transient delete 'update_core'
wp transient delete 'rsf_bulk_add_ips_form_data'

# Clear Cron Jobs
wp cron event delete 'rsfirewall_clear_transient'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rsfirewall_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rsfirewall_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rsfirewall_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rsfirewall_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rsfirewall_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rsfirewall_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rsfirewall_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rsfirewall_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rsfirewall_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rsfirewall_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rsfirewall_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rsfirewall_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rsfirewall_debug_variables'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rsfirewall_debug_variables'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rsfirewall_debug_variables'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rsfirewall_debug_variables'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rsfirewall_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rsfirewall_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rsfirewall_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rsfirewall_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rsfirewall_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rsfirewall_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rsfirewall_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rsfirewall_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'rsfirewall_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'rsfirewall_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'rsfirewall_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rsfirewall_%'"
