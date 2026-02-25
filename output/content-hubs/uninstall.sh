#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chps_content-hub_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chps_content-hub_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chps_content-hub_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chps_content-hub_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chps_content-hub_fallback_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chps_content-hub_fallback_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chps_content-hub_fallback_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chps_content-hub_fallback_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chps_post_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chps_post_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chps_post_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chps_post_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chps_post_meta_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chps_post_meta_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chps_post_meta_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chps_post_meta_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chps_post_meta_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chps_post_meta_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chps_post_meta_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chps_post_meta_link'"
