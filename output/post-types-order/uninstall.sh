#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CPT_configured'
wp option delete 'cpto_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'upload_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'upload_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'upload_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'upload_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_per_page'"
