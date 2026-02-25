#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sp_woo_gallery_slider_review_notice_dismiss'
wp option delete 'sp-smart-swatches-notice-dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%'"
wp option delete 'wcgs_settings'
wp option delete 'woo_gallery_slider_version'
wp option delete 'woo_gallery_slider_first_version'
wp option delete 'woo_gallery_slider_activation_date'
wp option delete 'woo_gallery_slider_db_version'
wp option delete 'wcgs_assigns'
wp option delete 'shapedplugin_offer_banner_dismissed_black_friday_2025'
wp option delete 'shapedplugin_offer_banner_dismissed_new_year_2026'

# Delete Transients
wp transient delete 'wcgs_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcgs_assign_layout_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcgs_assign_layout_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcgs_assign_layout_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcgs_assign_layout_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcgs_layouts_metaboxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcgs_layouts_metaboxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcgs_layouts_metaboxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcgs_layouts_metaboxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcgs_metabox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcgs_metabox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcgs_metabox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcgs_metabox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcgs_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcgs_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcgs_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcgs_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_gallery_slider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_gallery_slider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_gallery_slider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_gallery_slider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcgs_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcgs_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcgs_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcgs_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtwpvg_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtwpvg_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtwpvg_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtwpvg_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wavi_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wavi_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wavi_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wavi_value'"
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
