-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('single_exchange_timestamp', 'single_euro_btc');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('secpaycheckoutflow');
DELETE FROM wp_usermeta WHERE meta_key IN ('secpaycheckoutflow');
DELETE FROM wp_termmeta WHERE meta_key IN ('secpaycheckoutflow');
DELETE FROM wp_commentmeta WHERE meta_key IN ('secpaycheckoutflow');

