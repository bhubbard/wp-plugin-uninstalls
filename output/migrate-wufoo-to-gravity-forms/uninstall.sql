-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rt_wufoo_gravity_subdomain', 'rt_wufoo_gravity_api_key');
DELETE FROM wp_options WHERE option_name LIKE '%_fields';
DELETE FROM wp_options WHERE option_name LIKE '%_user_map';
DELETE FROM wp_options WHERE option_name LIKE '%_field_map';

