-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%qupra_api_user';
DELETE FROM wp_options WHERE option_name LIKE '%api_verified';
DELETE FROM wp_options WHERE option_name LIKE '%display_pricings';
DELETE FROM wp_options WHERE option_name LIKE '%network_pricings';
DELETE FROM wp_options WHERE option_name LIKE '%qupra_network_pricings';
DELETE FROM wp_options WHERE option_name LIKE '%email';
DELETE FROM wp_options WHERE option_name LIKE '%email_template';
DELETE FROM wp_options WHERE option_name LIKE '%next_api_key';

