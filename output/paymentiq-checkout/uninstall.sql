-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('piq_captured_amount', 'piq_capture_tx_id', '_customer_user', '_payment_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('piq_captured_amount', 'piq_capture_tx_id', '_customer_user', '_payment_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('piq_captured_amount', 'piq_capture_tx_id', '_customer_user', '_payment_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('piq_captured_amount', 'piq_capture_tx_id', '_customer_user', '_payment_method');

