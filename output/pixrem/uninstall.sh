#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pixrem_last_backup'
wp option delete 'pixrem_delete_log'
wp option delete 'pixrem_deleted_logs'
wp option delete 'sidebars_widgets'
wp option delete 'wpseo_social'
wp option delete 'pixrem_scan_progress'
wp option delete 'pixrem_whitelist_ids'
wp option delete 'pixrem_whitelist_paths'

# Delete Transients
wp transient delete 'pixrem_used_ids'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
