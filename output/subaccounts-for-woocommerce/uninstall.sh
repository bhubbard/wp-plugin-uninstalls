#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfwc_plugin_info'
wp option delete 'sfwc_options'
wp option delete 'sfwc_switcher_appearance'
wp option delete 'woocommerce_myaccount_subaccounts_endpoint'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'woocommerce_myaccount_page_id'

# Delete Transients
wp transient delete 'sfwc_flush_rewrite_rules_required'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sfwc_is_or_was_supervisor_%' OR option_name LIKE '_site_transient_sfwc_is_or_was_supervisor_%'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sfwc_is_or_was_manager_%' OR option_name LIKE '_site_transient_sfwc_is_or_was_manager_%'"

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfwc_account_level_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfwc_account_level_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfwc_account_level_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfwc_account_level_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfwc_children'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfwc_children'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfwc_children'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfwc_children'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
