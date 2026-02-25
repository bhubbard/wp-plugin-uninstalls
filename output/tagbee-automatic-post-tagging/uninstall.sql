-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tagbee_api_key', 'tagbee_api_key_secret', 'tagbee_auto_tag');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tagbee_api_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('tagbee_api_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('tagbee_api_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tagbee_api_id');

