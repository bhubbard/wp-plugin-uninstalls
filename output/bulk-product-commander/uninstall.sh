#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bpcmdr_per_page'
wp option delete 'bpcmdr_visible_columns'
wp option delete 'bpcmdr_meta_fields'
wp option delete 'wbpcmdr_meta_fields'
wp option delete 'wbpcmdr_visible_columns'
wp option delete 'wbpcmdr_per_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpcmdr_visible_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpcmdr_visible_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpcmdr_visible_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpcmdr_visible_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbpcmdr_visible_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbpcmdr_visible_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbpcmdr_visible_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbpcmdr_visible_columns'"
