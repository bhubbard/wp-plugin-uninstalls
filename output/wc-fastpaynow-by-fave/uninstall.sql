-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fastpay_wc_unique_site_id', 'wc_fastpay_sandbox_tab', 'wc_fastpay_skip_email_tab', 'woocommerce_fastpaynow_by_fave_settings');
DELETE FROM wp_options WHERE option_name LIKE 'fastpay_wc_order_payment_url_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fastpay_wc_is_new_order', '_fastpay_omni_reference', '_transaction_id', '_customer_user', '_fastpay_wc_omni_reference_suffix');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fastpay_wc_is_new_order', '_fastpay_omni_reference', '_transaction_id', '_customer_user', '_fastpay_wc_omni_reference_suffix');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fastpay_wc_is_new_order', '_fastpay_omni_reference', '_transaction_id', '_customer_user', '_fastpay_wc_omni_reference_suffix');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fastpay_wc_is_new_order', '_fastpay_omni_reference', '_transaction_id', '_customer_user', '_fastpay_wc_omni_reference_suffix');

