-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('web3devs_stacks_access_configured_coins_setting', 'web3devs_stacks_access_denial_page_setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_web3devs_stacks_access_meta_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_web3devs_stacks_access_meta_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_web3devs_stacks_access_meta_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_web3devs_stacks_access_meta_key');

