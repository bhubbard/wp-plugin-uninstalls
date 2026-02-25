-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mwsp_api_key', 'mwsp_merchant_id', 'mwsp_sandbox', 'mwsp_sc_css');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('phone');

