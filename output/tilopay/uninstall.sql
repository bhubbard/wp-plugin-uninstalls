-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tilopay_settings', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tilopay_auth_code', 'tilopay_is_captured', 'tpay_cancel', 'card', 'order', 'tilopay_html_form', 'authorization_number', 'tpay_was_redirect_native');
DELETE FROM wp_usermeta WHERE meta_key IN ('tilopay_auth_code', 'tilopay_is_captured', 'tpay_cancel', 'card', 'order', 'tilopay_html_form', 'authorization_number', 'tpay_was_redirect_native');
DELETE FROM wp_termmeta WHERE meta_key IN ('tilopay_auth_code', 'tilopay_is_captured', 'tpay_cancel', 'card', 'order', 'tilopay_html_form', 'authorization_number', 'tpay_was_redirect_native');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tilopay_auth_code', 'tilopay_is_captured', 'tpay_cancel', 'card', 'order', 'tilopay_html_form', 'authorization_number', 'tpay_was_redirect_native');

