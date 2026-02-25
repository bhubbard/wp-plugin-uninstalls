-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qr_code_sc', 'qr_code_wg', 'qr_code_widget', 'widget_qrcode_widget');

