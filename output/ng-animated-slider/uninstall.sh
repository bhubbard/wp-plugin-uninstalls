#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ng_animated_slider_theme_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_custom_post_slider_btntxt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_custom_post_slider_btntxt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_custom_post_slider_btntxt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_custom_post_slider_btntxt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_custom_post_slider_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_custom_post_slider_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_custom_post_slider_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_custom_post_slider_link'"
