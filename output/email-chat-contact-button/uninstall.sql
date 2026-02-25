-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Sidebar_Contact_Me_Button_Username', 'Sidebar_Contact_Me_Button_DisplayName', 'Sidebar_Contact_Me_Button_buttonType', 'Sidebar_Contact_Me_Button_overlay');

