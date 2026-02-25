#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpccl_settings'
wp option delete 'wpccl_localization'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpccl_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpccl_public'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpccl_public'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpccl_public'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpccl_public'"
