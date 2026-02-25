#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcsa_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcsa_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcsa_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcsa_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcsa_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcsa_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcsa_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcsa_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcsa_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcsa_key'"
