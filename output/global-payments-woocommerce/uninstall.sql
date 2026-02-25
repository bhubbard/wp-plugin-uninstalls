-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('globalpayments_plugin_deferred_admin_notices', 'woocommerce_globalpayments_version');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_globalpayments_payment_captured', '_globalpayments_payment_action', '_securesubmit_used_card_data', '_securesubmit_original_reported_total');
DELETE FROM wp_usermeta WHERE meta_key IN ('_globalpayments_payment_captured', '_globalpayments_payment_action', '_securesubmit_used_card_data', '_securesubmit_original_reported_total');
DELETE FROM wp_termmeta WHERE meta_key IN ('_globalpayments_payment_captured', '_globalpayments_payment_action', '_securesubmit_used_card_data', '_securesubmit_original_reported_total');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_globalpayments_payment_captured', '_globalpayments_payment_action', '_securesubmit_used_card_data', '_securesubmit_original_reported_total');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_billing_address';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_billing_address';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_billing_address';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_billing_address';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_email';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_email';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_email';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_email';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_payer';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_payer';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_payer';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_payer';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_shipping_address';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_shipping_address';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_shipping_address';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_shipping_address';

