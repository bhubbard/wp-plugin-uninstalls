#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'defaultContent'
wp option delete 'rewrite_rules'
wp option delete 'widget_nav_menu'
wp option delete 'widget_custom_html'
wp option delete 'widget_media_image'
wp option delete 'widget_Kite_video'
wp option delete 'widget_woocommerce_layered_nav'
wp option delete 'kite_product_images_gallery'
wp option delete 'woocommerce_placeholder_image'
wp option delete 'kite_instagram_short_access_token'
wp option delete 'kite_instagram_long_access_token'
wp option delete 'kite_instagram_user_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_verified'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'kite_token_%'"
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'woocommerce_tax_display_shop'

# Delete Transients
wp transient delete 'kite_demos_list'
wp transient delete 'kite_template_library_data'
wp transient delete 'kite_banners_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_kite_impoted_post_%' OR option_name LIKE '_site_transient_kite_impoted_post_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_kite_imported_post_%' OR option_name LIKE '_site_transient_kite_imported_post_%'"
wp transient delete 'wc_attribute_taxonomies'
wp transient delete 'kite_instagram_authorization_code'
wp transient delete 'kite_instagram_long_acess_token_refresh'
wp transient delete 'kite_user_instagram_media_list'
wp transient delete 'kite_instagram_username'
wp transient delete 'wc_term_counts'
wp transient delete 'kite_icon_names'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'header-template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'header-template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'header-template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'header-template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'footer-template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'footer-template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'footer-template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'footer-template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'media'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'media'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'media'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'media'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'audio-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'audio-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'audio-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'audio-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quote_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quote_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quote_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quote_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quote_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quote_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quote_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quote_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-sidebar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-sidebar-position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-sidebar-position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-sidebar-position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-sidebar-position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page-type-switch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page-type-switch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page-type-switch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page-type-switch'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image'"
