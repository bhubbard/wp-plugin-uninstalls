-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('payment_method', 'tamara_authorized', '_tamara_checkout_session_id', 'tamara_checkout_session_id', '_tamara_checkout_url', 'tamara_checkout_url', '_tamara_payment_type', 'tamara_payment_type', 'tamara_payment_type_instalment', '_tamara_capture_id', 'capture_id', '_tamara_cancel_id', 'tamara_cancel_id', '_tamara_order_id', 'tamara_order_id', '_tamara_force_capture_checked', '_tamara_force_authorise_checked');
DELETE FROM wp_usermeta WHERE meta_key IN ('payment_method', 'tamara_authorized', '_tamara_checkout_session_id', 'tamara_checkout_session_id', '_tamara_checkout_url', 'tamara_checkout_url', '_tamara_payment_type', 'tamara_payment_type', 'tamara_payment_type_instalment', '_tamara_capture_id', 'capture_id', '_tamara_cancel_id', 'tamara_cancel_id', '_tamara_order_id', 'tamara_order_id', '_tamara_force_capture_checked', '_tamara_force_authorise_checked');
DELETE FROM wp_termmeta WHERE meta_key IN ('payment_method', 'tamara_authorized', '_tamara_checkout_session_id', 'tamara_checkout_session_id', '_tamara_checkout_url', 'tamara_checkout_url', '_tamara_payment_type', 'tamara_payment_type', 'tamara_payment_type_instalment', '_tamara_capture_id', 'capture_id', '_tamara_cancel_id', 'tamara_cancel_id', '_tamara_order_id', 'tamara_order_id', '_tamara_force_capture_checked', '_tamara_force_authorise_checked');
DELETE FROM wp_commentmeta WHERE meta_key IN ('payment_method', 'tamara_authorized', '_tamara_checkout_session_id', 'tamara_checkout_session_id', '_tamara_checkout_url', 'tamara_checkout_url', '_tamara_payment_type', 'tamara_payment_type', 'tamara_payment_type_instalment', '_tamara_capture_id', 'capture_id', '_tamara_cancel_id', 'tamara_cancel_id', '_tamara_order_id', 'tamara_order_id', '_tamara_force_capture_checked', '_tamara_force_authorise_checked');

