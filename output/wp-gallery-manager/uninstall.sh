#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xyz_gal_thumb_height'
wp option delete 'xyz_gal_thumb_width'
wp option delete 'xyz_gal_img_height'
wp option delete 'xyz_gal_img_width'
wp option delete 'xyz_credit_link'
wp option delete 'xyz_gal_credit_dismiss'
wp option delete 'xyz_gal_page_limit'
wp option delete 'xyz_gal_gallery_height'
wp option delete 'xyz_gal_gallery_width'
wp option delete 'xyz_gal_wpgal_responsive'
wp option delete 'xyz_gal_slideshow'
wp option delete 'xyz_gal_slideshow_interval'
wp option delete 'xyz_gal_wp_gallery_override'
wp option delete 'xyz_cart_product_gallery'
wp option delete 'xyz_cls_gallery'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
