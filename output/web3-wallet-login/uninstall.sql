-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('web3-wallet-login_options', 'web3login_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('WEB3_WALLET_LOGIN_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('WEB3_WALLET_LOGIN_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('WEB3_WALLET_LOGIN_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('WEB3_WALLET_LOGIN_address');

