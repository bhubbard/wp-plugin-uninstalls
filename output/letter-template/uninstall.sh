#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wnlt-options'
wp option delete 'wnlt_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wnlt_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wnlt_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wnlt_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wnlt_data'"
