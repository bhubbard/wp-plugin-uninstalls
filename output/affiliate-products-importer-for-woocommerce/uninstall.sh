#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'affprodimp_amazon_access_key'
wp option delete 'affprodimp_amazon_secret_key'
wp option delete 'affprodimp_amazon_country_code'
wp option delete 'affprodimp_amazon_affiliate_id'
wp option delete 'affprodimp_settings_remote_image'
wp option delete 'affprodimp_settings_product_type'
wp option delete 'affprodimp_settings_gallery_images'
wp option delete 'affprodimp_settings_product_price'
wp option delete 'affprodimp_settings_product_attributes'

# Delete Transients
wp transient delete 'affprodimp_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'affprodimp_product_img_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'affprodimp_product_img_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'affprodimp_product_img_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'affprodimp_product_img_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'affprodimp_product_asin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'affprodimp_product_asin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'affprodimp_product_asin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'affprodimp_product_asin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'affprodimp_sync_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'affprodimp_sync_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'affprodimp_sync_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'affprodimp_sync_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'affprodimp_product_gallery_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'affprodimp_product_gallery_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'affprodimp_product_gallery_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'affprodimp_product_gallery_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
