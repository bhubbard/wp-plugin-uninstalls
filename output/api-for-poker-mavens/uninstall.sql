-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pmapi_server_url', 'pmapi_api_dir', 'pmapi_api_password', 'pmapi_site_password', 'pmapi_version', 'pmapi_avatar_max', 'pmapi_useradmin', 'pmapi_gameadmin');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pmapi_oldpwhash');
DELETE FROM wp_usermeta WHERE meta_key IN ('pmapi_oldpwhash');
DELETE FROM wp_termmeta WHERE meta_key IN ('pmapi_oldpwhash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pmapi_oldpwhash');

