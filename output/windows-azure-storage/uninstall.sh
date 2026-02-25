#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'azure_storage_account_name'
wp option delete 'azure_storage_account_primary_access_key'
wp option delete 'azure_storage_override_container_path'
wp option delete 'cname'
wp option delete 'azure_storage_use_for_default_upload'
wp option delete 'http_proxy_host'
wp option delete 'http_proxy_port'
wp option delete 'http_proxy_username'
wp option delete 'http_proxy_password'
wp option delete 'default_azure_storage_account_container_name'
wp option delete 'azure_storage_keep_local_file'
wp option delete 'azure_browse_cache_results'
wp option delete 'azure_cache_control'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_azure_progress_%' OR option_name LIKE '_site_transient_azure_progress_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'windows_azure_storage_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'windows_azure_storage_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'windows_azure_storage_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'windows_azure_storage_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_replace_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_replace_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_replace_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_replace_version'"
