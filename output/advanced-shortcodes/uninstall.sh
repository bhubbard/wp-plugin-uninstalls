#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ascodes_shortcode_title'
wp option delete 'ascodes_shortcode_sub_title'
wp option delete 'ascodes_shortcode_content'
wp option delete 'ascodes_version'
wp option delete 'ascodes_flash_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ascodes_shortcode_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ascodes_shortcode_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ascodes_shortcode_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ascodes_shortcode_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ascodes_shortcode_sub_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ascodes_shortcode_sub_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ascodes_shortcode_sub_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ascodes_shortcode_sub_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ascodes_shortcode_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ascodes_shortcode_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ascodes_shortcode_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ascodes_shortcode_content'"
