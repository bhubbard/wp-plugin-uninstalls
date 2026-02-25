#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_ulike_pro_license_key'
wp option delete 'wp_ulike_use_inline_custom_css'
wp option delete 'wp_ulike_dbVersion'
wp option delete 'disallowed_keys'
wp option delete 'nitropack-autoCachePurge'
wp option delete 'wp_ulike_settings'
wp option delete 'wp_ulike_customize'
wp option delete 'wp_ulike_pro_license_checksum'
wp option delete 'wp_ulike_pro_license_signature'
wp option delete 'wp_ulike_pro_license_data'
wp option delete 'wp_ulike_pro_license_data_fallback'
wp option delete 'widget_wp_ulike'

# Delete Transients
wp transient delete 'wp_ulike_global_avg_likes'
wp transient delete 'wp_ulike_pro_license_data'
wp transient delete 'wp_ulike_pro_license_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ulf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ulf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ulf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ulf_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_liked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_liked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_liked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_liked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_commentliked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_commentliked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_commentliked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_commentliked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_topicliked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_topicliked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_topicliked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_topicliked'"
