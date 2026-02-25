#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'redirect2url_newtabsrc'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_newtab'"
wp option delete 'redirect2url_url_history'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'redirect2url_meta_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'redirect2url_meta_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'redirect2url_meta_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'redirect2url_meta_value_key'"
