-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sahu_app_applestore_link', 'sahu_app_googlestore_link', 'sahu_app_googlestore_com', 'sahu_app_appname', 'sahu_app_appslogan', 'sahu_app_app_icon_url', 'sahu_app_color_code', 'sahu_app_color_code_font');

