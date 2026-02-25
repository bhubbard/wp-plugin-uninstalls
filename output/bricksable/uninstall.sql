-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bricksable_activation_date', 'bricksable_json_uploads', 'bricksable_all_elements', 'bricksable_bricks_builder_filter_save_messages', 'bricksable_bricks_builder_elements', 'bricksable_image-hotspots', 'bricksable_uninstall_on_delete');
DELETE FROM wp_options WHERE option_name LIKE '%_activation_date';
DELETE FROM wp_options WHERE option_name LIKE 'bricksable_%';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

