#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_slr_%'"
wp option delete 'wc_slr_show_fastest_stock_status_category_page'
wp option delete 'wc_slr_grouped_product_stock_status_for_category_page'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'woocommerce_stock_format'
wp option delete 'wc_slr_show_quantity_based_status'
wp option delete 'wc_slr_high_stock_threshold'
wp option delete 'wc_slr_medium_stock_threshold'
wp option delete 'wc_slr_high_stock_status_label'
wp option delete 'wc_slr_medium_stock_status_label'
wp option delete 'wc_slr_low_stock_label'
wp option delete 'wc_slr_show_available_backorder_variation'
wp option delete 'wc_slr_hide_variation_status_category_page'
wp option delete 'wc_slr_stock_status_before_price'
wp option delete 'b2bking_plugin_status_setting'
wp option delete 'b2bking_guest_access_restriction_setting'
wp option delete 'b2bking_multisite_separate_b2bb2c_setting'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_in_cart_checkout'"
wp option delete 'wc_slr_show_in_cart_page'
wp option delete 'b2bking_hide_stock_for_b2c_setting'
wp option delete 'wc_slr_hide_in_woocommerce_invoice'
wp option delete 'wc_slr_show_in_shop_page'
wp option delete 'wc_slr_show_in_wordpress_blocks'
wp option delete 'wc_slr_show_in_order_email'
wp option delete 'wc_slr_show_instock_backordered'
wp option delete 'wc_slr_show_stock_status_tag_in_email'
wp option delete 'wc_slr_hide_sad_face'
wp option delete 'wc_slr_stock_status_after_addtocart'
wp option delete 'wc_slr_disable_yoast_compatibility'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'grouped_product_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'grouped_product_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'grouped_product_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'grouped_product_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hide_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hide_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hide_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hide_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'b2bking_b2buser'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'b2bking_b2buser'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'b2bking_b2buser'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'b2bking_b2buser'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'woo_custom_stock_status_backorder_status_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'woo_custom_stock_status_backorder_status_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'woo_custom_stock_status_backorder_status_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'woo_custom_stock_status_backorder_status_%'"
