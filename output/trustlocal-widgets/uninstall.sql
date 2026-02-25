-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trustlocal_widgets_api_key', 'trustlocal_widgets_country_code', 'trustlocal_widgets_data_id');

