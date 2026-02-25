#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'kamoney_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'kamoney_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'kamoney_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kamoney_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kamoney_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kamoney_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kamoney_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kamoney_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kamoney_asset'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kamoney_asset'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kamoney_asset'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kamoney_asset'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kamoney_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kamoney_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kamoney_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kamoney_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kamoney_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kamoney_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kamoney_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kamoney_id'"
