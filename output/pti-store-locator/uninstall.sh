#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ptisl_google_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptisl_opening_hours'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptisl_opening_hours'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptisl_opening_hours'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptisl_opening_hours'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'store_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'store_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'store_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'store_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'store_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'store_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'store_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'store_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'store_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'store_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'store_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'store_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'store_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'store_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'store_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'store_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'store_lng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'store_lng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'store_lng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'store_lng'"
