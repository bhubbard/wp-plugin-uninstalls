#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'read_more_about_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'read_more_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'read_more_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'read_more_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'read_more_links'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'read_more_color_scheme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'read_more_color_scheme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'read_more_color_scheme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'read_more_color_scheme'"
