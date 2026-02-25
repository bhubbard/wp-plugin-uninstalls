-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%common_seller_id';
DELETE FROM wp_options WHERE option_name LIKE '%common_domain';
DELETE FROM wp_options WHERE option_name LIKE '%common_label_free_button';
DELETE FROM wp_options WHERE option_name LIKE '%common_label_paid_button';
DELETE FROM wp_options WHERE option_name LIKE '%common_free_button_action';
DELETE FROM wp_options WHERE option_name LIKE '%common_paid_button_action';
DELETE FROM wp_options WHERE option_name LIKE '%common_api_token';
DELETE FROM wp_options WHERE option_name LIKE '%common_item_id';

