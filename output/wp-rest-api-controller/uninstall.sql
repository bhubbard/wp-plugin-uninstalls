-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_rest_api_controller_post_types', 'wp_rest_api_controller_taxonomies');
DELETE FROM wp_options WHERE option_name LIKE '%_meta_keys';

