#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gallery_slice_link2full'
wp option delete 'gallery_slice_waiting_img'
wp option delete 'gallery_slice_threshold'
wp option delete 'gallery_slice_downto'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gallery_slice_%'"
wp option delete 'gallery_slice_version'
wp option delete 'wp_minify'
wp option delete 'bwp_minify_general'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gallery_noslice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gallery_noslice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gallery_noslice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gallery_noslice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gallery_link2full'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gallery_link2full'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gallery_link2full'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gallery_link2full'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gallery_downto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gallery_downto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gallery_downto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gallery_downto'"
