#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%advanced_delete_cloud_file'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%option_scheme'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%option_keep_copy'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%option_is_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%option_addon'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%post_types'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%file_types'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ucm_storage_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ucm_storage_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ucm_storage_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ucm_storage_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ucm_storage_adapter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ucm_storage_adapter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ucm_storage_adapter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ucm_storage_adapter'"
