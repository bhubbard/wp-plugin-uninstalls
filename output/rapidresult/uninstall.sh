#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rapidresult_insname'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'roll'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'roll'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'roll'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'roll'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'registration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'registration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'registration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'registration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total'"
