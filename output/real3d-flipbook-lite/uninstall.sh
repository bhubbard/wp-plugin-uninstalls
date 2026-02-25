#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'r3d'
wp option delete 'real3dflipbook_capability'
wp option delete 'r3d_version'
wp option delete 'r3d_flush_rewrite_rules'
wp option delete 'r3d_autoload_disabled'
wp option delete 'real3dflipbook_global'
wp option delete 'real3dflipbooks_ids'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'real3dflipbook_%'"
wp option delete 'r3d_posts_generated'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dflip_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dflip_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dflip_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dflip_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '3dfb_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '3dfb_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '3dfb_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '3dfb_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flipbook_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flipbook_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flipbook_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flipbook_id'"
