#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bstwbsftwppdtplgns_options'
wp option delete 'recently_activated'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'gllr_options'
wp option delete 'gllr_demo_options'
wp option delete 'rewrite_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'widget_gallery_categories_widget'
wp option delete 'cstmsrch_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%demo_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%options'"

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'bws_plugins_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bws_affiliate_postbox_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bws_affiliate_postbox_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bws_affiliate_postbox_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bws_affiliate_postbox_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gllr_album_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gllr_album_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gllr_album_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gllr_album_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gallery_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_gallery_order_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_gallery_order_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_gallery_order_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_gallery_order_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gllr_image_alt_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gllr_image_alt_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gllr_image_alt_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gllr_image_alt_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gllr_image_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gllr_image_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gllr_image_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gllr_image_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gallery_images_shortpixel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gallery_images_shortpixel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gallery_images_shortpixel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gallery_images_shortpixel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gllr_link_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gllr_link_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gllr_link_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gllr_link_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_gllr_media_library_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_gllr_media_library_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_gllr_media_library_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_gllr_media_library_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
