#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'values'
wp option delete 'uvis_default_basemaps'
wp option delete 'uvis_basemaps'
wp option delete 'uvis_playlist_post_type_name_singular'
wp option delete 'uvis_playlist_post_type_name_plural'
wp option delete 'uvis_playlist_post_type'
wp option delete 'uvis_playlist_post_meta'
wp option delete 'uvis_playlist_dropdown_number'
wp option delete 'uvis_visualization_post_type'
wp option delete 'uvis_visualization_post_type_name_plural'
wp option delete 'uvis_playlist_enable_dropdown'
wp option delete 'uvis_visualization_post_type_name_singular'
wp option delete 'uvis_convert_shortcodes'
wp option delete 'uvis_active_modules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uvis_playlist_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uvis_playlist_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uvis_playlist_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uvis_playlist_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uvis_module'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uvis_module'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uvis_module'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uvis_module'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uvis_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uvis_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uvis_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uvis_config'"
