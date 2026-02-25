-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('airdrop-settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('airdrop_symbol', 'airdrop_website', 'airdrop_enddate', 'airdrop_estimatedvalue', 'airdrop_requirement');
DELETE FROM wp_usermeta WHERE meta_key IN ('airdrop_symbol', 'airdrop_website', 'airdrop_enddate', 'airdrop_estimatedvalue', 'airdrop_requirement');
DELETE FROM wp_termmeta WHERE meta_key IN ('airdrop_symbol', 'airdrop_website', 'airdrop_enddate', 'airdrop_estimatedvalue', 'airdrop_requirement');
DELETE FROM wp_commentmeta WHERE meta_key IN ('airdrop_symbol', 'airdrop_website', 'airdrop_enddate', 'airdrop_estimatedvalue', 'airdrop_requirement');

