-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smac_api_key', 'smac_cart_interval', 'smac_cart_lifetime', 'smac_contact_unsubscribed_action', 'smac_contact_deleted_action', 'smac_mailing_receipt_consent', 'smac_mailing_receipt_consent_label', 'woocommerce_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_email', 'billing_phone', 'billing_first_name', 'billing_last_name', 'timestamp', 'should_send_to_smoove', 'sent_to_smoove', 'smoove_status', 'order_id', 'products', 'api_key', 'order_status', 'smoove_consent', 'terms', 'billing_address_1', 'billing_country', 'cart_total', '_thumbnail_id', '_wp_attachment_image_alt', '_product_image_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_email', 'billing_phone', 'billing_first_name', 'billing_last_name', 'timestamp', 'should_send_to_smoove', 'sent_to_smoove', 'smoove_status', 'order_id', 'products', 'api_key', 'order_status', 'smoove_consent', 'terms', 'billing_address_1', 'billing_country', 'cart_total', '_thumbnail_id', '_wp_attachment_image_alt', '_product_image_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_email', 'billing_phone', 'billing_first_name', 'billing_last_name', 'timestamp', 'should_send_to_smoove', 'sent_to_smoove', 'smoove_status', 'order_id', 'products', 'api_key', 'order_status', 'smoove_consent', 'terms', 'billing_address_1', 'billing_country', 'cart_total', '_thumbnail_id', '_wp_attachment_image_alt', '_product_image_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_email', 'billing_phone', 'billing_first_name', 'billing_last_name', 'timestamp', 'should_send_to_smoove', 'sent_to_smoove', 'smoove_status', 'order_id', 'products', 'api_key', 'order_status', 'smoove_consent', 'terms', 'billing_address_1', 'billing_country', 'cart_total', '_thumbnail_id', '_wp_attachment_image_alt', '_product_image_gallery');

