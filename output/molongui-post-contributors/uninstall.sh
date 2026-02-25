#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'molongui_contributors_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-activation-redirect' OR option_name LIKE '_site_transient_%-activation-redirect'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leading-phrase'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leading-phrase'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leading-phrase'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leading-phrase'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_default_contributor_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_default_contributor_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_default_contributor_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_default_contributor_role'"
