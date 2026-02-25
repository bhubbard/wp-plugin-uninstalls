-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('snfw_api_key', 'snfw_auth_key', 'snfw_template_order_placed', 'snfw_seller_number', 'snfw_template_seller_alert');
DELETE FROM wp_options WHERE option_name LIKE 'snfw_template_%';

