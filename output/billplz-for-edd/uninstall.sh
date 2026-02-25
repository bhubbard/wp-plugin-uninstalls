#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'billplz_edd_listener'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billplz_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billplz_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billplz_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billplz_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billplz_api_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billplz_api_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billplz_api_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billplz_api_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billplz_paid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billplz_paid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billplz_paid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billplz_paid'"
