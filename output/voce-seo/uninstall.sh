#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vseo_term_meta'
wp option delete 'VSEO_Version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vseo_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vseo_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vseo_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vseo_meta'"
