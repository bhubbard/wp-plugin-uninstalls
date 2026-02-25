-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pitane_api_key', 'google_countries', 'google_api_key', 'pitane_api_url', 'pitane_api_port', 'tariffT', 'tariffB', 'tariffR', 'rei_vor_id', 'rei_id', 'filter', 'gate12_guid', 'companyname', 'pitane_main_color', 'pitane_button_color', 'pitane_text_main_color', 'pitane_background_color', 'pitane_widget_text_color', 'pitane_success_text_color', 'pitane_error_text_color');

