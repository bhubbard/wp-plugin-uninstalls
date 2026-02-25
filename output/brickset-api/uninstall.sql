-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brickset-api-settings', 'brickset_oembed_key', 'bs_api_contributors', '_bs_api_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('brickset_user_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('brickset_user_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('brickset_user_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('brickset_user_hash');

