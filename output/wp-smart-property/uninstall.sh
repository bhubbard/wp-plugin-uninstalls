#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post_grid_layout_content'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_grid_meta_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_grid_meta_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_grid_meta_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_grid_meta_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_grid_post_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_grid_post_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_grid_post_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_grid_post_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_grid_ads_loop_meta_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_grid_ads_loop_meta_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_grid_ads_loop_meta_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_grid_ads_loop_meta_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
