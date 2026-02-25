-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_selfit_settings', 'selfit_access_token', 'selfit_refresh_token', 'selfit_access_token_expiry', 'selfit_refresh_token_expiry');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('digits_phone_no', '_selfit_payment_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('digits_phone_no', '_selfit_payment_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('digits_phone_no', '_selfit_payment_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('digits_phone_no', '_selfit_payment_id');

