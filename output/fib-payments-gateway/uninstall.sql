-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fibpg_payment_gateway_page_id', 'fibpg_base_url', 'fibpg_client_id', 'fibpg_client_secret');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fib_payment_id', '_fib_qr_data', '_fib_business_app_link', '_fib_corporate_app_link', '_fib_personal_app_link', '_fib_readable_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fib_payment_id', '_fib_qr_data', '_fib_business_app_link', '_fib_corporate_app_link', '_fib_personal_app_link', '_fib_readable_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fib_payment_id', '_fib_qr_data', '_fib_business_app_link', '_fib_corporate_app_link', '_fib_personal_app_link', '_fib_readable_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fib_payment_id', '_fib_qr_data', '_fib_business_app_link', '_fib_corporate_app_link', '_fib_personal_app_link', '_fib_readable_code');

