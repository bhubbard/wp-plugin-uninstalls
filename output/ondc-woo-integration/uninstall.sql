-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ondcsellerapp_onboarding', 'ondcsellerapp_settings', 'ondcsellerapp_env_veriables', 'ondcsellerapp_enable_message_queue', 'ondcsellerapp_subscription_request_type', '_ondc_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ondcsellerapp_product_categories', 'ondcsellerapp_product_sub_categories', 'ondcsellerapp_product_sync', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('ondcsellerapp_product_categories', 'ondcsellerapp_product_sub_categories', 'ondcsellerapp_product_sync', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('ondcsellerapp_product_categories', 'ondcsellerapp_product_sub_categories', 'ondcsellerapp_product_sync', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ondcsellerapp_product_categories', 'ondcsellerapp_product_sub_categories', 'ondcsellerapp_product_sync', '_price');

