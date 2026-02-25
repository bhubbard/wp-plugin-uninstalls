-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_http_s';
DELETE FROM wp_options WHERE option_name LIKE '%_saved_search_id';
DELETE FROM wp_options WHERE option_name LIKE '%_width';
DELETE FROM wp_options WHERE option_name LIKE '%_height';
DELETE FROM wp_options WHERE option_name LIKE '%_background_color';
DELETE FROM wp_options WHERE option_name LIKE '%_grid_color';
DELETE FROM wp_options WHERE option_name LIKE '%_header_background_color';
DELETE FROM wp_options WHERE option_name LIKE '%_header_text_color';
DELETE FROM wp_options WHERE option_name LIKE '%_agenda_register_btn_bg';
DELETE FROM wp_options WHERE option_name LIKE '%_agenda_register_btn_txt';
DELETE FROM wp_options WHERE option_name LIKE '%_agenda_date_bg';
DELETE FROM wp_options WHERE option_name LIKE '%_agenda_date_txt';
DELETE FROM wp_options WHERE option_name LIKE '%_view_mode';
DELETE FROM wp_options WHERE option_name LIKE '%_url';
DELETE FROM wp_options WHERE option_name LIKE '%_activate_links';
DELETE FROM wp_options WHERE option_name LIKE '%_organization_name';
DELETE FROM wp_options WHERE option_name LIKE '%_user_name';
DELETE FROM wp_options WHERE option_name LIKE '%_user_email';
DELETE FROM wp_options WHERE option_name LIKE '%_css_file';

