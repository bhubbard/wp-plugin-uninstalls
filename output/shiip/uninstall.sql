-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_shiip_user', 'wc_shiip_settings_originLocation', 'wc_shiip_settings_contactnumber', 'wc_shiip_settings_email', 'wc_shiip_user_token', 'wc_shiip_user_name', 'wc_shiip_settings_password', 'wc_shiip_exchangerate_usd', 'woocommerce_currency');

