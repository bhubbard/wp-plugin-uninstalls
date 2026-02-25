-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pagbank_stored_keypair', 'pagbank_oauth_code_verifier', 'pagbank_oauth_application_id', 'pagbank_oauth_environment');
DELETE FROM wp_options WHERE option_name LIKE 'pagbank_cached_request_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pagbank_account_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('pagbank_account_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('pagbank_account_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pagbank_account_id');

