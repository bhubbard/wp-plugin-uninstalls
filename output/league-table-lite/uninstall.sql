-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('daextletal_options_version', 'daextletal_database_version', 'daextletal_dismissible_notice_a');
DELETE FROM wp_options WHERE option_name LIKE '%_tables_menu_capability';
DELETE FROM wp_options WHERE option_name LIKE '%_tools_menu_capability';
DELETE FROM wp_options WHERE option_name LIKE '%_maintenance_menu_capability';
DELETE FROM wp_options WHERE option_name LIKE '%_items_per_page_tables_menu';
DELETE FROM wp_options WHERE option_name LIKE '%_enable_link_cell_property';
DELETE FROM wp_options WHERE option_name LIKE '%_enable_image_left_cell_property';
DELETE FROM wp_options WHERE option_name LIKE '%_enable_image_right_cell_property';
DELETE FROM wp_options WHERE option_name LIKE '%_widget_text_shortcode';
DELETE FROM wp_options WHERE option_name LIKE '%_load_google_font_1';
DELETE FROM wp_options WHERE option_name LIKE '%_load_google_font_2';
DELETE FROM wp_options WHERE option_name LIKE '%_general_stylesheet_file_url';
DELETE FROM wp_options WHERE option_name LIKE '%_tablesorter_library_url';
DELETE FROM wp_options WHERE option_name LIKE '%_general_javascript_file_url';
DELETE FROM wp_options WHERE option_name LIKE '%_limit_shortcode_parsing';
DELETE FROM wp_options WHERE option_name LIKE '%_verify_single_shortcode';
DELETE FROM wp_options WHERE option_name LIKE '%_max_execution_time';

