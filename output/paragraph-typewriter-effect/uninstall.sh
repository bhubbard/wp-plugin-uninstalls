#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'paratypewr_settings'
wp option delete 'ptw_settings'

# Delete Transients
wp transient delete 'paratypewr_settings_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paratypewr_user_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paratypewr_user_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paratypewr_user_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paratypewr_user_settings'"
