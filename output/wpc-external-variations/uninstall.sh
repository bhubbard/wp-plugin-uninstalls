#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcev_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcev_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcev_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcev_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcev_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcev_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcev_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcev_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcev_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcev_text'"
