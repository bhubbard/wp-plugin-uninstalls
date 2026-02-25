#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'tefw_settings'
wp option delete 'tefw_flush_rewrite_rules'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tefw_admin_selected_customer_%' OR option_name LIKE '_site_transient_tefw_admin_selected_customer_%'"

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tefw_exempt_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tefw_exempt_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tefw_exempt_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tefw_exempt_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tefw_exempt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tefw_exempt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tefw_exempt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tefw_exempt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tefw_exempt_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tefw_exempt_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tefw_exempt_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tefw_exempt_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tefw_exempt_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tefw_exempt_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tefw_exempt_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tefw_exempt_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tefw_exempt_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tefw_exempt_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tefw_exempt_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tefw_exempt_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tefw_exempt_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tefw_exempt_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tefw_exempt_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tefw_exempt_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_exemption'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_exemption'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_exemption'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_exemption'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tefw_exempt_statecity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tefw_exempt_statecity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tefw_exempt_statecity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tefw_exempt_statecity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tefw_exempt_custom_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tefw_exempt_custom_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tefw_exempt_custom_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tefw_exempt_custom_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tefw_exempt_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tefw_exempt_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tefw_exempt_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tefw_exempt_expiration'"
