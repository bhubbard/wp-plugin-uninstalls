-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('checkout_x_shop_id', 'checkout_x_storefront_url', 'checkout_x_api_version', 'checkout_x_app_url', 'checkout_x_api_url', 'checkout_x_website_url', 'checkout_x_event_secret');

