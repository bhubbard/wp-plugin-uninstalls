#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'alg_wc_bulk_price_converter_step'
wp option delete 'alg_wc_msrp_plugin_enabled'
wp option delete 'alg_wc_msrp_admin_field_label'
wp option delete 'woocommerce_version'
wp option delete 'alg_wc_msrp_advanced_hide_for_empty_price'
wp option delete 'alg_wc_msrp_admin_add_products_column'
wp option delete 'alg_wc_msrp_admin_add_quick_edit'
wp option delete 'alg_wc_msrp_admin_add_bulk_edit'
wp option delete 'alg_wc_msrp_admin_quick_bulk_edit_position'
wp option delete 'alg_wc_msrp_countries'
wp option delete 'alg_wc_msrp_countries_currencies'
wp option delete 'woocommerce_default_country'
wp option delete 'alg_wc_msrp_currencies'
wp option delete 'alg_wc_msrp_apply_price_filter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_you_save'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_you_save_percent'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_you_save_percent_round'"
wp option delete 'alg_wc_msrp_display_cart_total_savings_positions'
wp option delete 'alg_wc_msrp_display_cart_total_savings_template'
wp option delete 'alg_wc_msrp_variable_optimization'
wp option delete 'alg_wc_msrp_hide_regular_price_for_sale_products'
wp option delete 'alg_wc_msrp_custom_range_format_enabled'
wp option delete 'alg_wc_msrp_custom_range_format'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'alg_wc_msrp_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_msrp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_msrp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_msrp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_msrp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_msrp_by_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_msrp_by_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_msrp_by_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_msrp_by_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_msrp_by_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_msrp_by_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_msrp_by_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_msrp_by_currency'"
