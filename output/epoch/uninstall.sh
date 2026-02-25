#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'epoch_ver'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sample_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sample_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sample_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sample_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sample_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sample_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sample_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sample_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'array_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'array_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'array_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'array_meta'"
