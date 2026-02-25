#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bvlt_auth'
wp option delete 'bvlt_token'
wp option delete 'bvlt_storeid'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bvlt_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bvlt_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bvlt_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bvlt_locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bvlt_liked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bvlt_liked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bvlt_liked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bvlt_liked'"
