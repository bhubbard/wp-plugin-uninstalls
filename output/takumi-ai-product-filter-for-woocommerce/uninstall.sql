-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('takaifwc_settings', 'TAKAIFWC_Button_Styles', 'takaifwc_button_styles');

