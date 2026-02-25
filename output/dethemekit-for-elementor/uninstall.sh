#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pa_review_notice'
wp option delete 'lottie_widget_notice'
wp option delete 'active_sitewide_plugins'
wp option delete 'pa_beta_save_settings'
wp option delete 'dethemekit_option'
wp option delete 'pa_maps_save_settings'
wp option delete 'pa_wht_lbl_save_settings'
wp option delete 'pa_save_settings'
wp option delete 'temp_count'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'yith_wcwl_wishlist_page_id'
wp option delete 'yith_wcwl_add_to_wishlist_text'
wp option delete 'yith_wcwl_browse_wishlist_text'
wp option delete 'yith_wcwl_product_added_text'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saleflash_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saleflash_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saleflash_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saleflash_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dethemekit_total_stock_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dethemekit_total_stock_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dethemekit_total_stock_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dethemekit_total_stock_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color'"
