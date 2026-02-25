#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spreadr_token'
wp option delete 'spreadr_button_text'
wp option delete 'spreadr_review_token'
wp option delete 'spreadr_review_userid'
wp option delete 'spreadr_is_review_on'
wp option delete 'spreadr_review_display'
wp option delete 'spreadr_custom_single_page'
wp option delete 'spreadr_button_type'
wp option delete 'spreadr_tags'
wp option delete 'spreadr_custom_collection_page'
wp option delete 'spreadr_is_analytics'
wp option delete 'spreadr_geo_localize'
wp option delete 'is_facebook_pixel'
wp option delete 'spreadr_custom_javascript'
wp option delete 'spreadr_custom_button_type'
wp option delete 'spreadr_exit_popup'

# Delete Transients
wp transient delete 'spreadr_installing'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product-source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product-source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product-source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product-source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spreadr_product_button_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spreadr_product_button_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spreadr_product_button_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spreadr_product_button_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spreadr-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spreadr-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spreadr-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spreadr-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spreadr-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spreadr-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spreadr-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spreadr-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spreadr-region'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spreadr-region'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spreadr-region'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spreadr-region'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spreadr_product_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spreadr_product_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spreadr_product_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spreadr_product_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spreadr-asin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spreadr-asin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spreadr-asin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spreadr-asin'"
