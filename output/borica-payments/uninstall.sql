-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_borica_woo_payment_gateway_settings', 'borica_direct', 'borica_testmode', 'borica_status', 'borica_debug', 'borica_mname', 'borica_unsuccess_message', 'borica_success_message', 'borica_email', 'borica_text_color', 'borica_mid_bgn', 'borica_tid_bgn', 'borica_test_key_bgn', 'borica_test_password_bgn', 'borica_production_key_bgn', 'borica_production_password_bgn', 'borica_mid_eur', 'borica_tid_eur', 'borica_test_key_eur', 'borica_test_password_eur', 'borica_production_key_eur', 'borica_production_password_eur', 'borica_payment_response', 'borica_payment_response_template', 'borica_recurring', 'borica_recurring_cancel_button', 'borica_payment_lang', 'borica_db_version');
DELETE FROM wp_options WHERE option_name LIKE 'borica_receipt_page_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_borica_recurring_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('_borica_recurring_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('_borica_recurring_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_borica_recurring_ids');

