#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apipp_amazon_publickey'
wp option delete 'apipp_amazon_secretkey'
wp option delete 'apipp_amazon_associateid'
wp option delete 'apipp_amazon_locale'
wp option delete 'apipp_amazon_hiddenprice_message'
wp option delete 'apipp_amazon_notavailable_message'
wp option delete 'apipp_hook_excerpt'
wp option delete 'apipp_hook_content'
wp option delete 'apipp_open_new_window'
wp option delete 'apipp_API_call_method'
wp option delete 'appip_encodemode'
wp option delete 'apipp_amazon_debugkey'
wp option delete 'apipp_hide_binding'
wp option delete 'apipp_hide_warnings_quickfix'
wp option delete 'apipp_product_upgraded_version'
wp option delete 'apipp_amazon_use_lightbox'
wp option delete 'apipp_product_styles_default_version'
wp option delete 'apipp_product_styles_mine'
wp option delete 'apipp_product_styles'
wp option delete 'apipp_show_metaboxes'
wp option delete 'appip_show_single_only'
wp option delete 'apipp_show_single_only'
wp option delete 'apipp_amazon_cache_sec'
wp option delete 'apipp_version'
wp option delete 'apipp_dbversion'
wp option delete 'apipp_db_trouble'
wp option delete 'appip_dismiss_msg'
wp option delete 'apipp_amazon_cache_ahead'
wp option delete 'apipp_ssl_images'
wp option delete 'apipp_use_cartURL'
wp option delete 'apipp_uninstall'
wp option delete 'apipp_uninstall_all'
wp option delete 'amazon_product_dummy_featured_image_ID'
wp option delete 'apipp_product_featured_image'
wp option delete 'classic-editor-replace'
wp option delete 'amazon-button-custom'
wp option delete 'apipp_amazon_associate_ad_linkid'
wp option delete 'apipp_amazon_associate_ad_region'
wp option delete 'apipp_product_mobile_popover'
wp option delete 'amazon-button-image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_featured_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_featured_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_featured_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_featured_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon-response-com'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon-response-com'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon-response-com'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon-response-com'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon-product-isactive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon-product-isactive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon-product-isactive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon-product-isactive'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon-product-single-asin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon-product-single-asin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon-product-single-asin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon-product-single-asin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon-product-content-location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon-product-content-location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon-product-content-location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon-product-content-location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon-product-content-hook-override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon-product-content-hook-override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon-product-content-hook-override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon-product-content-hook-override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon-product-excerpt-hook-override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon-product-excerpt-hook-override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon-product-excerpt-hook-override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon-product-excerpt-hook-override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon-product-singular-only'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon-product-singular-only'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon-product-singular-only'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon-product-singular-only'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon-product-amazon-desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon-product-amazon-desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon-product-amazon-desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon-product-amazon-desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon-product-show-gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon-product-show-gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon-product-show-gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon-product-show-gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon-product-show-features'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon-product-show-features'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon-product-show-features'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon-product-show-features'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon-product-newwindow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon-product-newwindow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon-product-newwindow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon-product-newwindow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon-product-show-list-price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon-product-show-list-price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon-product-show-list-price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon-product-show-list-price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon-product-show-used-price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon-product-show-used-price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon-product-show-used-price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon-product-show-used-price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon-product-show-saved-amt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon-product-show-saved-amt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon-product-show-saved-amt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon-product-show-saved-amt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon-product-timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon-product-timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon-product-timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon-product-timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon-product-new-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon-product-new-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon-product-new-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon-product-new-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon-product-use-cartURL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon-product-use-cartURL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon-product-use-cartURL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon-product-use-cartURL'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon-product-template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon-product-template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon-product-template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon-product-template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
