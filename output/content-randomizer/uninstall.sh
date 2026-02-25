#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elm_randomizer_permalinks'
wp option delete 'elm_randomizer'
wp option delete 'elm_randomizer_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date_to'"
