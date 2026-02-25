#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_downloads_grant_access_after_payment'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cover_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cover_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cover_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cover_hash'"
