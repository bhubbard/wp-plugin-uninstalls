-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('muxp_payment_request_text', 'muxp_qr_max_width', 'muxp_store_qr_code_as_image', 'muxp_payment_request_email_text', 'woocommerce_bacs_accounts');

