#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_manage_stock'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_customer_note'"
