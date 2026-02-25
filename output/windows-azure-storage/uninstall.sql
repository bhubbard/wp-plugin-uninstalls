-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('azure_storage_account_name', 'azure_storage_account_primary_access_key', 'azure_storage_override_container_path', 'cname', 'azure_storage_use_for_default_upload', 'http_proxy_host', 'http_proxy_port', 'http_proxy_username', 'http_proxy_password', 'default_azure_storage_account_container_name', 'azure_storage_keep_local_file', 'azure_browse_cache_results', 'azure_cache_control');
DELETE FROM wp_options WHERE option_name LIKE 'azure_progress_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file', 'windows_azure_storage_info', '_wp_attachment_metadata', '_wp_attachment_replace_version');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file', 'windows_azure_storage_info', '_wp_attachment_metadata', '_wp_attachment_replace_version');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file', 'windows_azure_storage_info', '_wp_attachment_metadata', '_wp_attachment_replace_version');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file', 'windows_azure_storage_info', '_wp_attachment_metadata', '_wp_attachment_replace_version');

