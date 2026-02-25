-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nft_login_setting_reg_login', 'nft_login_setting_contract_address', 'nft_login_setting_chain', 'nft_login_setting_token_name');
DELETE FROM wp_options WHERE option_name LIKE '%_token_name';
DELETE FROM wp_options WHERE option_name LIKE '%_contract_address';
DELETE FROM wp_options WHERE option_name LIKE '%_chain';
DELETE FROM wp_options WHERE option_name LIKE '%_reg_login';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nft_login_enabled', 'nftlogin_address', 'nftlogin_token_id', 'nftlogin_contract_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('nft_login_enabled', 'nftlogin_address', 'nftlogin_token_id', 'nftlogin_contract_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('nft_login_enabled', 'nftlogin_address', 'nftlogin_token_id', 'nftlogin_contract_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nft_login_enabled', 'nftlogin_address', 'nftlogin_token_id', 'nftlogin_contract_address');

