-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_region';
DELETE FROM wp_options WHERE option_name LIKE '%_is_tutorial_dismissed';
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'recipient_blockchain_address_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'recipient_blockchain_address_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'recipient_blockchain_address_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'recipient_blockchain_address_%';

