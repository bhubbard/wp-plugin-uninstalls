#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'link_monitor_in_posts'
wp option delete 'link_monitor_in_pages'
wp option delete 'link_monitor_in_excerpt'
wp option delete 'link_monitor_get'
wp option delete 'link_monitor_in_comments'
wp option delete 'link_monitor_in_feed'
wp option delete 'link_monitor_in_custom_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_links'"
