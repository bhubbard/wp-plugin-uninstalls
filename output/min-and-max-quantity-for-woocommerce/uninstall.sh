#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sm_sortable_order_%'"
wp option delete 'sm_sortable_order'
wp option delete 'min_order_quantity_reached'
wp option delete 'max_order_quantity_exceeded'
wp option delete 'min_order_value_reached'
wp option delete 'max_order_value_exceeded'
wp option delete 'min_order_item_reached'
wp option delete 'max_order_item_exceeded'
wp option delete 'min_order_quantity'
wp option delete 'max_order_quantity'
wp option delete 'min_order_value'
wp option delete 'max_order_value'
wp option delete 'min_items_quantity'
wp option delete 'max_items_quantity'
wp option delete 'mmqw_plugin_data_migrated'
wp option delete 'mmqw_where_hear_about_us'
wp option delete 'mmqw_data_submited_in_sendiblue'
wp option delete 'max_order_item_exceeded '
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'mmqw_version'
wp option delete 'chk_enable_logging'
wp option delete 'woocommerce_prices_include_tax'

# Delete Transients
wp transient delete '_welcome_screen_mmqw_mode_activation_redirect_data'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'mmqw-admin-notice'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mmqw_total_groups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mmqw_total_groups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mmqw_total_groups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mmqw_total_groups'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mmqw_rule_groups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mmqw_rule_groups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mmqw_rule_groups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mmqw_rule_groups'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fee_settings_unique_shipping_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fee_settings_unique_shipping_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fee_settings_unique_shipping_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fee_settings_unique_shipping_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cost_on_product_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cost_on_product_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cost_on_product_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cost_on_product_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cost_on_product_variation_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cost_on_product_variation_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cost_on_product_variation_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cost_on_product_variation_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cost_on_category_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cost_on_category_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cost_on_category_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cost_on_category_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cost_on_country_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cost_on_country_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cost_on_country_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cost_on_country_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_metabox_ap_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_metabox_ap_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_metabox_ap_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_metabox_ap_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_metabox_ap_product_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_metabox_ap_product_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_metabox_ap_product_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_metabox_ap_product_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_metabox_ap_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_metabox_ap_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_metabox_ap_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_metabox_ap_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_metabox_ap_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_metabox_ap_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_metabox_ap_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_metabox_ap_country'"
