#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sina_access_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scdata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scdata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scdata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scdata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sina_t'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sina_t'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sina_t'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sina_t'"
