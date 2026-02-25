-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('virtuaria_serveloja_not_authorized', 'virtuaria_serveloja_webhook_id', 'woocommerce_enable_signup_and_login_from_checkout', 'woocommerce_virtuaria_serveloja_credit_settings', 'virtuaria_serveloja_settings', 'virtuaria_serveloja_main_setting_saved');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_serveloja_credit_info_store_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_serveloja_credit_info_store_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_serveloja_credit_info_store_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_serveloja_credit_info_store_%';

