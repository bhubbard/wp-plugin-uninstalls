-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('olivery_login', 'olivery_password', 'olivery_db', 'olivery_company_sequence', 'olivery_follower_address', 'olivery_follower_area', 'olivery_follower_store_name', 'olivery_follower_mobile_number', 'olivery_follower_second_mobile_number', 'olivery_delivery_coms', 'olivery_new_orders_statuses');

