#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_favorites_inclusive_search'
wp option delete 'wp_favorites_non_logged_in_html'
wp option delete 'wp_favorites_version'
wp option delete 'wp_favorites_logged_in_no_faves_html'
wp option delete 'wp_favorites_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_favorites'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_favorites'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_favorites'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_favorites'"
