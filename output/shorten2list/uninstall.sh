#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shorten2list_options_%'"
wp option delete 'shorten2list_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'short_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'short_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'short_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'short_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sent-by-mail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sent-by-mail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sent-by-mail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sent-by-mail'"
