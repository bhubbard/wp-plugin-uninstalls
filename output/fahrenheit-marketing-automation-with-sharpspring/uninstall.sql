-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fm_ss_plugin_settings', 'wc_ss_plugin_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ss_transaction_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('ss_transaction_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('ss_transaction_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ss_transaction_id');

