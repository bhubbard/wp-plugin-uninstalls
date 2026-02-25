-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('datapocket_wp_token', 'datapocket_token', 'datapocket_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_url', 'datapocket_is_existing_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('_url', 'datapocket_is_existing_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('_url', 'datapocket_is_existing_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_url', 'datapocket_is_existing_post');

