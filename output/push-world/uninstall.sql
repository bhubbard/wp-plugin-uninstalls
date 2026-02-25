-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pushworld_protocol', 'pushworld_abandoned_timeout', 'pushworld_default_title', 'pushworld_default_text', 'pushworld_default_duration', 'pushworld_default_life_time', 'pushworld_default_url', 'pushworld_default_icon', 'pushworld_client_id', 'pushworld_client_secret', 'pushworld_platform_code', 'pushworld_embed_code', 'pushworld_woocommerce_enable');
DELETE FROM wp_options WHERE option_name LIKE 'sunrise_defaults_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pw_device_id', '_billing_first_name', '_billing_last_name', '_billing_address_1', '_billing_address_2', '_billing_city', '_billing_state', '_billing_country', '_billing_postcode', 'payment_method_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pw_device_id', '_billing_first_name', '_billing_last_name', '_billing_address_1', '_billing_address_2', '_billing_city', '_billing_state', '_billing_country', '_billing_postcode', 'payment_method_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pw_device_id', '_billing_first_name', '_billing_last_name', '_billing_address_1', '_billing_address_2', '_billing_city', '_billing_state', '_billing_country', '_billing_postcode', 'payment_method_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pw_device_id', '_billing_first_name', '_billing_last_name', '_billing_address_1', '_billing_address_2', '_billing_city', '_billing_state', '_billing_country', '_billing_postcode', 'payment_method_title');

