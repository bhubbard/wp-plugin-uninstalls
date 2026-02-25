#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ast_review_update_ignore_388'
wp option delete 'ast_notice_ignore_39'
wp option delete 'wc_ast_api_date_range'
wp option delete 'ast_usage_data_selector'
wp option delete 'customizer_partial_shipped_order_settings_enabled'
wp option delete 'woocommerce_customer_partial_shipped_order_settings'
wp option delete 'woocommerce_customer_updated_tracking_order_settings'
wp option delete 'wc_ast_default_provider'
wp option delete 'wc_ast_unclude_tracking_info'
wp option delete 'wc_ast_show_orders_actions'
wp option delete 'wc_advanced_shipment_tracking'
wp option delete 'tracking_info_settings'
wp option delete 'ast_option_migrated'
wp option delete 'wc_ast_status_shipped'
wp option delete 'wc_ast_status_partial_shipped'
wp option delete 'wc_ast_status_partial_shipped_label_color'
wp option delete 'wc_ast_status_partial_shipped_label_font_color'
wp option delete 'wc_ast_status_delivered'
wp option delete 'wc_ast_api_date_format'
wp option delete 'wcast_enable_partial_shipped_email'
wp option delete 'wc_ast_status_label_color'
wp option delete 'wc_ast_status_label_font_color'
wp option delete 'autocomplete_order_tpi'
wp option delete 'wc_ast_status_updated_tracking'
wp option delete 'wc_ast_status_updated_tracking_label_color'
wp option delete 'wc_ast_status_updated_tracking_label_font_color'
wp option delete 'wcast_enable_updated_tracking_email'
wp option delete 'ast_trackship_notice_ignore'
wp option delete 'ast_pro_shipping_integration_notice_ignore'
wp option delete 'zorem_return_update_ignore_385'
wp option delete 'alg_wc_custom_order_numbers_enabled'
wp option delete 'alg_wc_custom_order_numbers_prefix'
wp option delete 'wcj_order_numbers_enabled'
wp option delete 'wcj_order_number_prefix'
wp option delete 'wcj_order_number_date_prefix'
wp option delete 'wcj_order_number_suffix'
wp option delete 'wcj_order_number_date_suffix'
wp option delete 'wpla_use_amazon_order_number'
wp option delete 'order_preview'
wp option delete 'orderStatus'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_order_settings'"

# Delete Transients
wp transient delete '_ast_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'zorem_usage_tracker_send'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_last_name'"
