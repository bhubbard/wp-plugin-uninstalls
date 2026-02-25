-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tiqbiz_api_token', 'tiqbiz_api_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tiqbiz_api_post_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tiqbiz_api_post_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tiqbiz_api_post_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tiqbiz_api_post_id');

