#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nakiedy_token'
wp option delete 'nakiedy_url'
wp option delete 'nakiedy_width'
wp option delete 'nakiedy_height'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpn_meta_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpn_meta_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpn_meta_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpn_meta_value_key'"
