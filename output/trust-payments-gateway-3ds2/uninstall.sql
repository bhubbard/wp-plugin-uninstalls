-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tp_gateway_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tp_userid', '_customer_user', '_tp_transaction_reference', '_subscriptionnumber', '_myst_order_ref', '_tp_gateway_payment_rnd', '_billing_address_index', '_tp_gateway_payment_processing', '_order_reference_id', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'billing_phone', 'shipping_first_name', 'shipping_last_name', 'shipping_company', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', '_tp_transaction_data', '_date_paid');
DELETE FROM wp_usermeta WHERE meta_key IN ('tp_userid', '_customer_user', '_tp_transaction_reference', '_subscriptionnumber', '_myst_order_ref', '_tp_gateway_payment_rnd', '_billing_address_index', '_tp_gateway_payment_processing', '_order_reference_id', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'billing_phone', 'shipping_first_name', 'shipping_last_name', 'shipping_company', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', '_tp_transaction_data', '_date_paid');
DELETE FROM wp_termmeta WHERE meta_key IN ('tp_userid', '_customer_user', '_tp_transaction_reference', '_subscriptionnumber', '_myst_order_ref', '_tp_gateway_payment_rnd', '_billing_address_index', '_tp_gateway_payment_processing', '_order_reference_id', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'billing_phone', 'shipping_first_name', 'shipping_last_name', 'shipping_company', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', '_tp_transaction_data', '_date_paid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tp_userid', '_customer_user', '_tp_transaction_reference', '_subscriptionnumber', '_myst_order_ref', '_tp_gateway_payment_rnd', '_billing_address_index', '_tp_gateway_payment_processing', '_order_reference_id', 'billing_first_name', 'billing_last_name', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'billing_phone', 'shipping_first_name', 'shipping_last_name', 'shipping_company', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', '_tp_transaction_data', '_date_paid');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_subscriptionnumber';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_subscriptionnumber';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_subscriptionnumber';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_subscriptionnumber';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_tp_transaction_reference.%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_tp_transaction_reference.%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_tp_transaction_reference.%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tp_transaction_reference.%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_tp_transaction_maskedpan.%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_tp_transaction_maskedpan.%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_tp_transaction_maskedpan.%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tp_transaction_maskedpan.%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_tp_transaction_paymenttypedescription.%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_tp_transaction_paymenttypedescription.%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_tp_transaction_paymenttypedescription.%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tp_transaction_paymenttypedescription.%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_tp_transaction_use_saved_card.%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_tp_transaction_use_saved_card.%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_tp_transaction_use_saved_card.%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tp_transaction_use_saved_card.%';

