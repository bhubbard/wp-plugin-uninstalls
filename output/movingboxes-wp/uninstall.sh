#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mb_template'
wp option delete 'mb_nav_format'
wp option delete 'mb_easing'
wp option delete 'mb_start_panel'
wp option delete 'mb_width'
wp option delete 'mb_panel_width'
wp option delete 'mb_reduced_size'
wp option delete 'mb_fixed_height'
wp option delete 'mb_speed'
wp option delete 'mb_wrap'
wp option delete 'mb_hash_tags'
wp option delete 'mb_show_nav'
wp option delete 'mb_structure'
wp option delete 'mb_current_class'
wp option delete 'mb_tooltip'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mb_all_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mb_all_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mb_all_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mb_all_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mb_active_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mb_active_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mb_active_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mb_active_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
