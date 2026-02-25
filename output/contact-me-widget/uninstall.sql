-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Contact_Me_Button_Username', 'Contact_Me_Button_DisplayName', 'Contact_Me_Button_buttonType', 'Contact_Me_Button_buttonLocation', 'Contact_Me_Button_overlay');

