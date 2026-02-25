-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pricemesh_option_secret', 'pricemesh_option_token', 'pricemesh_option_country', 'pricemesh_option_initial_items', 'pricemesh_option_disclaimer', 'pricemesh_option_stock', 'pricemesh_option_duplicates', 'pricemesh_option_display', 'pricemesh_option_stylesheet', 'pricemesh_option_theme', 'pricemesh_option_debug', 'pricemesh_option_title', 'pricemesh_option_name', 'pricemesh_option_link_all', 'pricemesh_option_link_text', 'pricemesh_option_wp_robot_integration', 'pricemesh_option_woocommerce_integration', 'pricemesh_option_custom_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pricemesh_pids', '_pricemesh_wp_robot_pids_added');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pricemesh_pids', '_pricemesh_wp_robot_pids_added');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pricemesh_pids', '_pricemesh_wp_robot_pids_added');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pricemesh_pids', '_pricemesh_wp_robot_pids_added');

