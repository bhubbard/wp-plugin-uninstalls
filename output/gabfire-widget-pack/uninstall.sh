#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gab_options'

# Delete Transients
wp transient delete 'gabfire_socialmashup_widget_twitter_search_transient'
wp transient delete 'gabfire_socialmashup_widget_twitter_transient'
wp transient delete 'gabfire_socialmashup_widget_twitter_username_transient'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
