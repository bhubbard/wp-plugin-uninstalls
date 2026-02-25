#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pwf_style'
wp option delete 'pwf_shop_analytics'
wp option delete 'woocommerce_currency_pos'
wp option delete 'pwf_woo_query_filters'
wp option delete 'pwf_woocommerce_analytic_meta_labels'
wp option delete 'pwf_woocommerce_analytic_range_slider_meta_labels'
wp option delete 'pwf_woocommerce_version'
wp option delete 'pwf_woocommerce_free_version'
wp option delete 'pwf_woocommerce_free_version_update_message'
wp option delete 'pwf_woocommerce_db_version'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_hide_out_of_stock_items'

# Delete Transients
wp transient delete 'pwf_woo_filter_analytic_languages_list'
wp transient delete 'pwf_woo_filter_set_db_for_analytic'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pwf_woo_post_filter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pwf_woo_post_filter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pwf_woo_post_filter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pwf_woo_post_filter'"
