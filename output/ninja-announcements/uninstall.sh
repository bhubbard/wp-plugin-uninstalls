#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ninja_annc_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ninja_annc_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ninja_annc_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ninja_annc_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ninja_annc_meta'"
