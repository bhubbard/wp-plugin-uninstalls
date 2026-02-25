-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ssv_payment_settings', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ssv_transaction_resp', '_ssv_transaction_timestamp', '_ssv_transaction_id', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ssv_transaction_resp', '_ssv_transaction_timestamp', '_ssv_transaction_id', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ssv_transaction_resp', '_ssv_transaction_timestamp', '_ssv_transaction_id', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ssv_transaction_resp', '_ssv_transaction_timestamp', '_ssv_transaction_id', '_elementor_data');

