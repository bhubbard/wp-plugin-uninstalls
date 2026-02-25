#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'multisite_blog_list'
wp transient delete 'multisite_blog_list_details'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_logged_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_logged_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_logged_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_logged_in'"
