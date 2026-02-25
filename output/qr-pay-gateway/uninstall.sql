-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_qr_pay_gateway_settings', 'qr_pay_gateway_enabled', 'qr_pay_gateway_title', 'qr_pay_gateway_order_status', 'qr_pay_gateway_description', 'qr_pay_gateway_instructions', 'qr_pay_gateway_upload_qr', 'qr_pay_gateway_media', 'qr_pay_gateway_preview_qr', 'qr_pay_gateway_account_name', 'qr_pay_gateway_qr_type_selector', 'qr_pay_gateway_qr_required_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'essb_full_pay_name', 'essb_mobile', 'essb_transaction', 'essb_transaction_type', 'full_pay_name', 'mobile', 'transaction', 'transaction_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'essb_full_pay_name', 'essb_mobile', 'essb_transaction', 'essb_transaction_type', 'full_pay_name', 'mobile', 'transaction', 'transaction_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'essb_full_pay_name', 'essb_mobile', 'essb_transaction', 'essb_transaction_type', 'full_pay_name', 'mobile', 'transaction', 'transaction_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'essb_full_pay_name', 'essb_mobile', 'essb_transaction', 'essb_transaction_type', 'full_pay_name', 'mobile', 'transaction', 'transaction_type');

