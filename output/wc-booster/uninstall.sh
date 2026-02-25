#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_block'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'last_demo_unlink_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_booster_product_banner_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_booster_product_banner_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_booster_product_banner_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_booster_product_banner_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_booster_product_usps'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_booster_product_usps'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_booster_product_usps'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_booster_product_usps'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_booster_wishlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_booster_wishlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_booster_wishlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_booster_wishlist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_booster_favourites_demo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_booster_favourites_demo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_booster_favourites_demo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_booster_favourites_demo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_booster_category_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_booster_category_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_booster_category_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_booster_category_icon'"
