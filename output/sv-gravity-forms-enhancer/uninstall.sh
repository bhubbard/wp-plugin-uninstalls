#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_block'
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sv_core_expert_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sv_core_expert_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sv_core_expert_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sv_core_expert_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
