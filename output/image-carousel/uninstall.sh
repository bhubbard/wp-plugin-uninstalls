#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'classic-editor-replace'
wp option delete 'activated_icp_plugin'
wp option delete 'icp_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icp_meta_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icp_meta_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icp_meta_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icp_meta_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_icp_gallery_link_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_icp_gallery_link_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_icp_gallery_link_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_icp_gallery_link_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_icp_gallery_link_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_icp_gallery_link_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_icp_gallery_link_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_icp_gallery_link_target'"
