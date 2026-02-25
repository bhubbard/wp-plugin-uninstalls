-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_guest_checkout', 'woocommerce_mangopay_settings', 'mp_ignored_failed_po', 'mp_ignored_refused_kyc', 'wcvendors_vendor_give_taxes', 'wcvendors_vendor_give_shipping', 'rewrite_rules');
DELETE FROM wp_options WHERE option_name LIKE 'mp_failed_po_%';
DELETE FROM wp_options WHERE option_name LIKE 'mp_refused_kyc_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_mp_status', 'user_business_type', 'compagny_number', 'termsconditions', 'preauth_message_order_admin', 'user_birthday', 'user_nationality', 'billing_country', 'billing_state', 'mangopay_payment_type', 'mangopay_payment_ref', 'pv_shop_name', 'preauthorization_id', '_preautorisation', 'mp_transaction_id', 'mp_transaction_ids', 'mp_success_transaction_id', 'billing_first_name', 'billing_last_name', 'first_name', 'last_name', 'billing_address_1', 'billing_city', 'billing_postcode', 'vendor_account_type', 'vendor_account_name', 'vendor_account_address1', 'vendor_account_address2', 'vendor_account_city', 'vendor_account_postcode', 'vendor_account_country', 'vendor_account_region', 'mp_transfers', 'mp_instapays');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_mp_status', 'user_business_type', 'compagny_number', 'termsconditions', 'preauth_message_order_admin', 'user_birthday', 'user_nationality', 'billing_country', 'billing_state', 'mangopay_payment_type', 'mangopay_payment_ref', 'pv_shop_name', 'preauthorization_id', '_preautorisation', 'mp_transaction_id', 'mp_transaction_ids', 'mp_success_transaction_id', 'billing_first_name', 'billing_last_name', 'first_name', 'last_name', 'billing_address_1', 'billing_city', 'billing_postcode', 'vendor_account_type', 'vendor_account_name', 'vendor_account_address1', 'vendor_account_address2', 'vendor_account_city', 'vendor_account_postcode', 'vendor_account_country', 'vendor_account_region', 'mp_transfers', 'mp_instapays');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_mp_status', 'user_business_type', 'compagny_number', 'termsconditions', 'preauth_message_order_admin', 'user_birthday', 'user_nationality', 'billing_country', 'billing_state', 'mangopay_payment_type', 'mangopay_payment_ref', 'pv_shop_name', 'preauthorization_id', '_preautorisation', 'mp_transaction_id', 'mp_transaction_ids', 'mp_success_transaction_id', 'billing_first_name', 'billing_last_name', 'first_name', 'last_name', 'billing_address_1', 'billing_city', 'billing_postcode', 'vendor_account_type', 'vendor_account_name', 'vendor_account_address1', 'vendor_account_address2', 'vendor_account_city', 'vendor_account_postcode', 'vendor_account_country', 'vendor_account_region', 'mp_transfers', 'mp_instapays');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_mp_status', 'user_business_type', 'compagny_number', 'termsconditions', 'preauth_message_order_admin', 'user_birthday', 'user_nationality', 'billing_country', 'billing_state', 'mangopay_payment_type', 'mangopay_payment_ref', 'pv_shop_name', 'preauthorization_id', '_preautorisation', 'mp_transaction_id', 'mp_transaction_ids', 'mp_success_transaction_id', 'billing_first_name', 'billing_last_name', 'first_name', 'last_name', 'billing_address_1', 'billing_city', 'billing_postcode', 'vendor_account_type', 'vendor_account_name', 'vendor_account_address1', 'vendor_account_address2', 'vendor_account_city', 'vendor_account_postcode', 'vendor_account_country', 'vendor_account_region', 'mp_transfers', 'mp_instapays');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'kyc_document_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'kyc_document_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'kyc_document_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kyc_document_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'kyc_error_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'kyc_error_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'kyc_error_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kyc_error_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'kyc_file_timestop_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'kyc_file_timestop_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'kyc_file_timestop_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kyc_file_timestop_%';

