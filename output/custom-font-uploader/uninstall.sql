-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfup-general-settings', 'custom-font-uploader-settings', 'google-font-uploader-settings', 'cfup-support', 'font_file_name', 'cfu_general_settings', 'cfupgooglefonts_data', 'cfu_apikey_verified', 'googlefont_file_name', '_cfu_is_new_install');

