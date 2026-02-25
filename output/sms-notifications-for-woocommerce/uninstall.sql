-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('suwcsms_settings', 'suwcsms_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shipping_phone', '_payment_method', 'otp_verified', '_billing_phone', 'otp_value', 'billing_phone', 'billing_country');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shipping_phone', '_payment_method', 'otp_verified', '_billing_phone', 'otp_value', 'billing_phone', 'billing_country');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shipping_phone', '_payment_method', 'otp_verified', '_billing_phone', 'otp_value', 'billing_phone', 'billing_country');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shipping_phone', '_payment_method', 'otp_verified', '_billing_phone', 'otp_value', 'billing_phone', 'billing_country');

