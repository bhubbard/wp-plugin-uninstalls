-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dm_recaptcha', 'dm_API_messages', 'sidebars_widgets', 'dm_API_credentials', 'dm_API_address_books', 'dm_API_data_fields', 'dm_redirections', 'dm_api_endpoint', 'widget_dm_widget', 'dotdigital_wordpress_api_data_fields', 'dotdigital_wordpress_api_lists');
DELETE FROM wp_options WHERE option_name LIKE '%_api_endpoint';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE 'dm_recaptcha_temp_values_%';

