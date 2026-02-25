#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsl_settings'
wp option delete 'wncrm_source_id'

# Delete Transients
wp transient delete 'wncrm_is_already_called'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsl_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsl_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsl_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsl_settings'"
