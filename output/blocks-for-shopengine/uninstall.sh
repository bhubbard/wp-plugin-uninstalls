#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_enable_myaccount_registration'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'shopengine_product_id'
wp option delete 'woocommerce_enable_guest_checkout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'devmonsta_bajaar_tag_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'devmonsta_bajaar_tag_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'devmonsta_bajaar_tag_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'devmonsta_bajaar_tag_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gutenova_font_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gutenova_font_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gutenova_font_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gutenova_font_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gutenova_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gutenova_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gutenova_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gutenova_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopengine_tag_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopengine_tag_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopengine_tag_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopengine_tag_bg_color'"
