#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_fields_billing'
wp option delete 'wc_fields_shipping'
wp option delete 'wc_fields_additional'
wp option delete 'thwcfe_sections'
wp option delete 'wooccm_billing'
wp option delete 'wooccm_shipping'
wp option delete 'wooccm_additional'
wp option delete 'wcpfc_field_configuration_data'
wp option delete 'wp_cpg_enable_conditional_payment_gateways'
wp option delete 'wp_cpg_is_not_first_time'
wp option delete 'wp_cpg_no_payment_gateways_message'
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wccpg_or_groups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wccpg_or_groups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wccpg_or_groups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wccpg_or_groups'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wccpg_payment_gateways'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wccpg_payment_gateways'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wccpg_payment_gateways'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wccpg_payment_gateways'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wccpg_is_payment_gateway_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wccpg_is_payment_gateway_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wccpg_is_payment_gateway_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wccpg_is_payment_gateway_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
