#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'manornk_meta_description'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manornk_meta_description_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manornk_meta_description_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manornk_meta_description_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manornk_meta_description_value_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manornk_rel_canonical_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manornk_rel_canonical_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manornk_rel_canonical_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manornk_rel_canonical_value_key'"
