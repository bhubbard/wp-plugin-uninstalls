-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sharethis_inline_settings', 'sharethis_sticky_settings', 'sharethis_inline', 'sharethis_sticky', 'sharethis_sticky_category_off', 'sharethis_property_id', 'sharethis_first_product', 'sharethis_gdpr', 'sharethis_token', 'sharethis_button_config', 'sharethis_fract', 'sharethis_sticky_page_on', 'sharethis_sticky_page_off', 'st-activation', 'st-connection');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_on';
DELETE FROM wp_options WHERE option_name LIKE '%_off';
DELETE FROM wp_options WHERE option_name LIKE '%_sticky_page_off';
DELETE FROM wp_options WHERE option_name LIKE '%_sticky_category_off';
DELETE FROM wp_options WHERE option_name LIKE 'sharethis_%';

