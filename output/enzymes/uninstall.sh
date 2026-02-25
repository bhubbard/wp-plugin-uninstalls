#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enzymes3_legacy'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sample-name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sample-name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sample-name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sample-name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sample name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sample name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sample name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sample name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'implode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'implode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'implode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'implode'"
