#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_variation_gallery_do_activate_redirect'
wp option delete 'woocommerce_single_image_width'
wp option delete 'woocommerce_placeholder_image'
wp option delete 'woo_variation_gallery_thumbnails_columns'
wp option delete 'woo_variation_gallery_thumbnails_gap'
wp option delete 'woo_variation_gallery_width'
wp option delete 'woo_variation_gallery_medium_device_width'
wp option delete 'woo_variation_gallery_small_device_width'
wp option delete 'woo_variation_gallery_small_device_clear_float'
wp option delete 'woo_variation_gallery_extra_small_device_width'
wp option delete 'woo_variation_gallery_extra_small_device_clear_float'
wp option delete 'woo_variation_gallery_margin'
wp option delete 'woo_variation_gallery_preloader_disable'
wp option delete 'woo_variation_gallery_preload_style'
wp option delete 'woo_variation_gallery_slider_autoplay'
wp option delete 'woo_variation_gallery_slider_autoplay_speed'
wp option delete 'woo_variation_gallery_slide_speed'
wp option delete 'woo_variation_gallery_slider_fade'
wp option delete 'woo_variation_gallery_slider_arrow'
wp option delete 'woo_variation_gallery_zoom'
wp option delete 'woo_variation_gallery_lightbox'
wp option delete 'woo_variation_gallery_thumbnail_slide'
wp option delete 'woo_variation_gallery_thumbnail_arrow'
wp option delete 'woo_variation_gallery_zoom_position'
wp option delete 'woo_variation_gallery_thumbnail_position'
wp option delete 'woo_variation_gallery_remove_featured_image'
wp option delete 'woo_variation_gallery_disabled_product_type'
wp option delete 'woo_variation_gallery_thumbnail_width'
wp option delete 'woo_variation_gallery_reset_on_variation_change'
wp option delete 'woo_variation_gallery_image_preload'
wp option delete 'woo_variation_gallery'
wp option delete 'woocommerce_show_marketplace_suggestions'
wp option delete 'active_sitewide_plugins'
wp option delete 'woo_variation_gallery_defer_js'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'variation_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'variation_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'variation_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'variation_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avmi_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avmi_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avmi_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avmi_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtwpvg_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtwpvg_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtwpvg_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtwpvg_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_variation_gallery_media_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_variation_gallery_media_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_variation_gallery_media_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_variation_gallery_media_video'"
