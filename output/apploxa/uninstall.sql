-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apploxa_custom_interval', 'apploxa_abandoned_cart', 'apploxa_order_note_msg', 'apploxa_enable_otp', 'apploxa_otp_txt', 'apploxa_login_url', 'apploxa_token', 'apploxa_admin_whatsapp', 'apploxa_adm_order_processing');
DELETE FROM wp_options WHERE option_name LIKE 'apploxa_%';
DELETE FROM wp_options WHERE option_name LIKE 'apploxa_adm_%';
DELETE FROM wp_options WHERE option_name LIKE 'apploxa_otp_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('apploxa_whatsapp', 'billing_phone', '_cart_timestamp');
DELETE FROM wp_usermeta WHERE meta_key IN ('apploxa_whatsapp', 'billing_phone', '_cart_timestamp');
DELETE FROM wp_termmeta WHERE meta_key IN ('apploxa_whatsapp', 'billing_phone', '_cart_timestamp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('apploxa_whatsapp', 'billing_phone', '_cart_timestamp');

