-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('MintNFT_option_name', 'MintToken', 'Mintdeployeraddress', 'MintOwnerEmail', 'MintApikey');

