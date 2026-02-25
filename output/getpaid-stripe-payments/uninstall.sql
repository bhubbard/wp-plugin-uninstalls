-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('getpaid_stripe_migrated_keys', 'wpinv_stripe_redirected_to_settings', 'wpinv_settings');
DELETE FROM wp_options WHERE option_name LIKE 'getpaid_stripe_checkout_session_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'getpaid_stripe_checkout_session_url_%';
DELETE FROM wp_options WHERE option_name LIKE 'getpaid_stripe_setup_intent_%';
DELETE FROM wp_options WHERE option_name LIKE 'getpaid_stripe_setup_intent_secret_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gp_stripe_intent_id', 'payment_form_data', '_gp_stripe_process_intent', '_gp_stripe_intent_status', 'wpinv_stripe_intent_id', 'getpaid_stripe_payment_profile_id', 'wpinv_associated_stripe_invoice_item', '_gp_stripe_charge_id', 'shipping_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gp_stripe_intent_id', 'payment_form_data', '_gp_stripe_process_intent', '_gp_stripe_intent_status', 'wpinv_stripe_intent_id', 'getpaid_stripe_payment_profile_id', 'wpinv_associated_stripe_invoice_item', '_gp_stripe_charge_id', 'shipping_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gp_stripe_intent_id', 'payment_form_data', '_gp_stripe_process_intent', '_gp_stripe_intent_status', 'wpinv_stripe_intent_id', 'getpaid_stripe_payment_profile_id', 'wpinv_associated_stripe_invoice_item', '_gp_stripe_charge_id', 'shipping_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gp_stripe_intent_id', 'payment_form_data', '_gp_stripe_process_intent', '_gp_stripe_intent_status', 'wpinv_stripe_intent_id', 'getpaid_stripe_payment_profile_id', 'wpinv_associated_stripe_invoice_item', '_gp_stripe_charge_id', 'shipping_address');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_gp_stripe_refund_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_gp_stripe_refund_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_gp_stripe_refund_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_gp_stripe_refund_%';

