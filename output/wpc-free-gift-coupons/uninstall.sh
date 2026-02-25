#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcfg_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcfg_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcfg_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcfg_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcfg_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcfg_config'"
