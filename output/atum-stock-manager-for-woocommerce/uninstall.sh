#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_show_marketplace_suggestions'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'default_product_cat'
wp option delete 'woocommerce_manage_stock'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%settings'"
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_shipping_tax_class'
wp option delete 'woocommerce_tax_total_display'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%last_sales_calc'"
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_notify_no_stock'
wp option delete 'woocommerce_notify_low_stock'
wp option delete 'atum_version'
wp option delete 'woocommerce_default_country'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'atum-marketing-popup'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%count_comments' OR option_name LIKE '_site_transient_%count_comments'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'barcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'barcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'barcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'barcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_children'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_children'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_children'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_children'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'atum-marketing-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'atum-marketing-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'atum-marketing-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'atum-marketing-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%dashboard_widgets_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%dashboard_widgets_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%dashboard_widgets_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%dashboard_widgets_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date_expected'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date_expected'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date_expected'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date_expected'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atum_admin_footer_text_rated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atum_admin_footer_text_rated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atum_admin_footer_text_rated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atum_admin_footer_text_rated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atum-marketing-popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atum-marketing-popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atum-marketing-popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atum-marketing-popup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atum-marketing-dash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atum-marketing-dash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atum-marketing-dash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atum-marketing-dash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'note_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'note_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'note_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'note_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'note_params'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'note_params'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'note_params'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'note_params'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_use_default_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_use_default_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_use_default_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_use_default_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_use_default_terms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_use_default_terms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_use_default_terms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_use_default_terms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpml_lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpml_lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpml_lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpml_lang'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_resource_base_costs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_resource_base_costs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_resource_base_costs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_resource_base_costs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_resource_block_costs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_resource_block_costs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_resource_block_costs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_resource_block_costs'"
