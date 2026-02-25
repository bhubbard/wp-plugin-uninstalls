-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_signup_and_login_from_checkout', 'woocommerce_virt_pagseguro_settings', 'virtuaria_pagseguro_not_authorized', 'woocommerce_ship_to_destination', 'homolog_number', 'virtuaria_pagseguro_main_setting_saved');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_pagseguro_credit_info_store_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_pagseguro_credit_info_store_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_pagseguro_credit_info_store_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_pagseguro_credit_info_store_%';

