#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hyperise-snippet'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hyperise_meta_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hyperise_meta_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hyperise_meta_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hyperise_meta_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hyperise_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hyperise_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hyperise_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hyperise_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hyperise_meta_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hyperise_meta_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hyperise_meta_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hyperise_meta_desc'"
