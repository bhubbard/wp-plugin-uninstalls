#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lb24_token'
wp option delete 'lb24_uid'
wp option delete 'lb24_refresh_token'
wp option delete 'lb24_uname'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lb24_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lb24_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lb24_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lb24_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lb24_uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lb24_uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lb24_uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lb24_uid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lb24_refresh_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lb24_refresh_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lb24_refresh_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lb24_refresh_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lb24_uname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lb24_uname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lb24_uname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lb24_uname'"
