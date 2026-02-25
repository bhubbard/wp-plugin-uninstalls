#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hmd_options'
wp option delete 'head-meta-data-dismiss-notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hmd_disable_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hmd_disable_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hmd_disable_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hmd_disable_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'head-meta-data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'head-meta-data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'head-meta-data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'head-meta-data'"
