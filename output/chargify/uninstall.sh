#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chargify'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_chargify-%' OR option_name LIKE '_site_transient_chargify-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chargify_access_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chargify_access_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chargify_access_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chargify_access_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chargify_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chargify_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chargify_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chargify_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chargify_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chargify_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chargify_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chargify_level'"
