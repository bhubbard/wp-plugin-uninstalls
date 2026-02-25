-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('climate_content_pool_general_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('content_pool_message', 'content_pool_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('content_pool_message', 'content_pool_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('content_pool_message', 'content_pool_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('content_pool_message', 'content_pool_id');

