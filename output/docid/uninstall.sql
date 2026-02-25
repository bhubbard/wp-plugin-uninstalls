-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('docid_general_asset_secret', 'docid_general_asset_id');
DELETE FROM wp_options WHERE option_name LIKE 'docid_user_%';
DELETE FROM wp_options WHERE option_name LIKE 'docid_skip_auth_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('docid_restricted');
DELETE FROM wp_usermeta WHERE meta_key IN ('docid_restricted');
DELETE FROM wp_termmeta WHERE meta_key IN ('docid_restricted');
DELETE FROM wp_commentmeta WHERE meta_key IN ('docid_restricted');

