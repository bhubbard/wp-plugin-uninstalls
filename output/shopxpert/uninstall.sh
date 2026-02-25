#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shopxpert_installed'
wp option delete 'SHOPXPERT_VERSION'
wp option delete 'shopxpert_do_activation_redirect'
wp option delete 'shopxpert_others_tabs'
wp option delete 'shopxpert_fake_order_detection_settings'
wp option delete 'shopxpert_fake_order_log'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'shopxpert_wishList_status'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'yith_wcwl_wishlist_page_id'
wp option delete 'yith_wcwl_add_to_wishlist_text'
wp option delete 'yith_wcwl_browse_wishlist_text'
wp option delete 'yith_wcwl_product_added_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_selectproduct_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_selectproduct_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_selectproduct_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_selectproduct_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopxpert_cart_custom_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopxpert_cart_custom_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopxpert_cart_custom_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopxpert_cart_custom_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopxpert_partial_payment_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopxpert_partial_payment_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopxpert_partial_payment_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopxpert_partial_payment_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopxpert_pre_order_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopxpert_pre_order_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopxpert_pre_order_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopxpert_pre_order_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopxpert_partial_payment_amount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopxpert_partial_payment_amount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopxpert_partial_payment_amount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopxpert_partial_payment_amount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopxpert_partial_payment_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopxpert_partial_payment_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopxpert_partial_payment_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopxpert_partial_payment_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopxpert_selectcategory_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopxpert_selectcategory_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopxpert_selectcategory_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopxpert_selectcategory_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_shopxpert_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_shopxpert_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_shopxpert_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_shopxpert_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shopxpert_backorder_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shopxpert_backorder_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shopxpert_backorder_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shopxpert_backorder_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shopxpert_backorder_availability_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shopxpert_backorder_availability_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shopxpert_backorder_availability_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shopxpert_backorder_availability_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saleflash_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saleflash_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saleflash_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saleflash_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopxpert_total_stock_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopxpert_total_stock_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopxpert_total_stock_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopxpert_total_stock_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
