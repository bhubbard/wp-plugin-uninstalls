-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_category_country_list';
DELETE FROM wp_options WHERE option_name LIKE '%_category_marker_list';
DELETE FROM wp_options WHERE option_name LIKE '%_post_tag_country_list';
DELETE FROM wp_options WHERE option_name LIKE '%_post_tag_marker_list';

