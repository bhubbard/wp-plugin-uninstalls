-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_easyauthnet_authorizenet_settings', 'easyauthnet_activation_time', 'easyauthnet_review_notice_hide_v1', 'easyauthnet_next_show_time', 'woocommerce_easyauthnet_authorizenet_echeck_settings', 'woocommerce_default_country', 'easyauthnet_authorizenet_invalid_credentials_message', 'easyauthnet_authorized_for_woocommerce_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'billing_address_2', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'billing_address_2', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'billing_address_2', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'billing_address_2', 'first_name', 'last_name');

