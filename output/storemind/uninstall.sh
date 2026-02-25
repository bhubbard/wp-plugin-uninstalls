#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'storemind_hand_offs_count'
wp option delete 'storemind_database_options'
wp option delete 'storemind_configuration_options'
wp option delete 'storemind_appearance_options'
wp option delete 'storemind_handoffs_options'
wp option delete 'storemind_usermessages_options'
wp option delete 'storemind_anymind_unique_id'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'storemind_on_trial'
wp option delete 'storemind_subscription_level'
wp option delete 'storemind_anymind_unique_chat_id'
wp option delete 'storemind_saved_site_url'
wp option delete 'storemind_saved_site_name'
wp option delete 'storemind_saved_currency'
wp option delete 'storemind_saved_weight_unit'
wp option delete 'storemind_saved_dimensions_unit'
wp option delete 'storemind_active_license'
wp option delete 'storemind_version'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_coming_soon'
wp option delete 'woocommerce_site_visibility'
wp option delete 'woocommerce_coming_soon_scope'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wapf_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wapf_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wapf_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wapf_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wapf_fieldgroup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wapf_fieldgroup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wapf_fieldgroup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wapf_fieldgroup'"
