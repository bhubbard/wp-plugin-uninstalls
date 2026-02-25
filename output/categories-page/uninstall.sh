#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tags_page_version'
wp option delete 'tags_page_options'
wp option delete 'tags_page_display_options_moved'
wp option delete 'widget_tag_cloud'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
