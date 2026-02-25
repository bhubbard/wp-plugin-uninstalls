#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wc_quote_general'
wp option delete 'watq_unread_quotes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_quote_%'"
wp option delete 'wc_quote_email'
wp option delete 'wc_quote_notifications'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'wc_quote_messages'
wp option delete 'widget_quote_list'
wp option delete 'widget_quote_list_icon'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'wc_quote_customization'
wp option delete 'wc_quote_backward_check'
wp option delete 'wc_settings_quote_admin_email'
wp option delete 'wc_settings_quote_to_cart_select'
wp option delete 'wc_settings_add_to_cart_on_detail_page'
wp option delete 'wc_settings_add_to_cart_global'
wp option delete 'wc_settings_quote_button_text'
wp option delete 'wc_settings_allow_guest_user'
wp option delete 'wc_settings_empty_quote_to_cart'
wp option delete 'wc_settings_empty_quote_after_email'
wp option delete 'wc_settings_empty_cart_to_quote'
wp option delete 'wc_settings_quote_success_email'
wp option delete 'wc_settings_quote_error_email'
wp option delete 'wc_settings_error_email_user_input'
wp option delete 'wc_settings_quote_email_subject'
wp option delete 'wc_settings_quote_email_before_message'
wp option delete 'wc_settings_quote_email_after_message'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_email_header_image'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quote_contents'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quote_contents'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quote_contents'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quote_contents'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quote_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quote_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quote_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quote_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_quote'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_quote'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_quote'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_quote'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbp_variable_product_selection'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbp_variable_product_selection'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbp_variable_product_selection'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbp_variable_product_selection'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbp_single_bundle_page_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbp_single_bundle_page_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbp_single_bundle_page_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbp_single_bundle_page_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbp_bundle_prod_pricing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbp_bundle_prod_pricing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbp_bundle_prod_pricing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbp_bundle_prod_pricing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbp_bundle_prod_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbp_bundle_prod_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbp_bundle_prod_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbp_bundle_prod_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbp_bundle_item_grouping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbp_bundle_item_grouping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbp_bundle_item_grouping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbp_bundle_item_grouping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbp_bundle_min_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbp_bundle_min_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbp_bundle_min_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbp_bundle_min_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbp_bundle_max_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbp_bundle_max_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbp_bundle_max_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbp_bundle_max_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbp_disable_bundle_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbp_disable_bundle_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbp_disable_bundle_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbp_disable_bundle_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbp_disable_bundle_tems_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbp_disable_bundle_tems_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbp_disable_bundle_tems_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbp_disable_bundle_tems_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbp_enable_edit_in_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbp_enable_edit_in_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbp_enable_edit_in_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbp_enable_edit_in_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbp_show_product_addon_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbp_show_product_addon_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbp_show_product_addon_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbp_show_product_addon_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbp_product_addons_selection'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbp_product_addons_selection'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbp_product_addons_selection'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbp_product_addons_selection'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbp_bundle_above_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbp_bundle_above_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbp_bundle_above_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbp_bundle_above_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbp_bundle_under_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbp_bundle_under_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbp_bundle_under_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbp_bundle_under_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbp_bundle_content_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbp_bundle_content_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbp_bundle_content_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbp_bundle_content_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbp_products_addons_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbp_products_addons_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbp_products_addons_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbp_products_addons_values'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbp_products_category_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbp_products_category_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbp_products_category_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbp_products_category_values'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wcbp_invidual_product_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wcbp_invidual_product_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wcbp_invidual_product_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wcbp_invidual_product_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'converted_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'converted_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'converted_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'converted_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quote_post_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quote_post_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quote_post_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quote_post_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quote_totals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quote_totals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quote_totals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quote_totals'"
