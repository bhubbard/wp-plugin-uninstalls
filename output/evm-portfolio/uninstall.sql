-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('evm_fb', 'evm_twitter', 'evm_linkedin', 'evm_height', 'evm_width', 'evm_tcolor', 'evm_color', 'evm_htbcolor', 'evm_htcolor');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_url');

