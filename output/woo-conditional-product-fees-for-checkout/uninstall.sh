#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'chk_move_menu_under_wc'
wp option delete 'chk_fees_per_page'
wp option delete 'wcpfc_limited_allowed_rules'
wp option delete 'wcpfc_where_hear_about_us'
wp option delete 'wcpfc_data_submited_in_sendiblue'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wcpfc_version'
wp option delete 'wcpfc_popup_feature_introduced'
wp option delete 'wcpfc_installed_at'
wp option delete 'chk_enable_custom_fun'
wp option delete 'chk_enable_coupon_fee'
wp option delete 'chk_enable_all_fee_tax'
wp option delete 'merge_fee_settings_taxable_type'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'chk_enable_all_fee_tooltip'
wp option delete 'chk_enable_all_fee_tooltip_text'
wp option delete 'wcpfc_existing_user'

# Delete Transients
wp transient delete 'get_all_fees'
wp transient delete 'get_top_ten_fees'
wp transient delete 'get_all_dashboard_fees'
wp transient delete '_welcome_screen_wcpfc_pro_mode_activation_redirect_data'
wp transient delete 'wcpfc-hide-limit-notice'
wp transient delete '_dotstore_marketing_free_plugins'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete '_welcome_screen_activation_redirect_data'
wp transient delete 'wcpfc-admin-notice'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fee_settings_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fee_settings_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fee_settings_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fee_settings_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_fees_metabox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_fees_metabox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_fees_metabox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_fees_metabox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_metabox_ap_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_metabox_ap_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_metabox_ap_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_metabox_ap_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_metabox_ap_product_subtotal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_metabox_ap_product_subtotal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_metabox_ap_product_subtotal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_metabox_ap_product_subtotal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_metabox_ap_product_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_metabox_ap_product_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_metabox_ap_product_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_metabox_ap_product_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_metabox_ap_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_metabox_ap_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_metabox_ap_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_metabox_ap_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_metabox_ap_category_subtotal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_metabox_ap_category_subtotal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_metabox_ap_category_subtotal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_metabox_ap_category_subtotal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_metabox_ap_category_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_metabox_ap_category_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_metabox_ap_category_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_metabox_ap_category_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_metabox_ap_shipping_class_subtotal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_metabox_ap_shipping_class_subtotal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_metabox_ap_shipping_class_subtotal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_metabox_ap_shipping_class_subtotal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fee_settings_product_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fee_settings_product_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fee_settings_product_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fee_settings_product_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fee_settings_select_fee_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fee_settings_select_fee_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fee_settings_select_fee_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fee_settings_select_fee_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fee_settings_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fee_settings_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fee_settings_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fee_settings_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fee_settings_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fee_settings_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fee_settings_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fee_settings_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fee_settings_tooltip_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fee_settings_tooltip_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fee_settings_tooltip_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fee_settings_tooltip_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fee_settings_price_message_on_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fee_settings_price_message_on_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fee_settings_price_message_on_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fee_settings_price_message_on_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fee_settings_select_taxable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fee_settings_select_taxable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fee_settings_select_taxable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fee_settings_select_taxable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fee_settings_taxable_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fee_settings_taxable_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fee_settings_taxable_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fee_settings_taxable_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_fees_in_product_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_fees_in_product_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_fees_in_product_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_fees_in_product_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ds_time_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ds_time_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ds_time_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ds_time_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ds_time_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ds_time_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ds_time_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ds_time_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fee_show_on_checkout_only'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fee_show_on_checkout_only'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fee_show_on_checkout_only'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fee_show_on_checkout_only'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fees_on_cart_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fees_on_cart_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fees_on_cart_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fees_on_cart_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ds_select_day_of_week'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ds_select_day_of_week'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ds_select_day_of_week'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ds_select_day_of_week'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cost_on_total_cart_qty_n_combination'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cost_on_total_cart_qty_n_combination'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cost_on_total_cart_qty_n_combination'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cost_on_total_cart_qty_n_combination'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcpfc_display_optional_fee_on_checkout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcpfc_display_optional_fee_on_checkout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcpfc_display_optional_fee_on_checkout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcpfc_display_optional_fee_on_checkout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcpfc_fee_revenue'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcpfc_fee_revenue'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcpfc_fee_revenue'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcpfc_fee_revenue'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'optional_fees_in_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'optional_fees_in_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'optional_fees_in_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'optional_fees_in_cart'"
