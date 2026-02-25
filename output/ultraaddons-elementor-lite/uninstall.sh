#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_cpt_support'
wp option delete 'product_show_op'
wp option delete 'public_product_show_op'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display-on-canvas-template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display-on-canvas-template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display-on-canvas-template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display-on-canvas-template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ua_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ua_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ua_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ua_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ua_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ua_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ua_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ua_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ua_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ua_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ua_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ua_display'"
