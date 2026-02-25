-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('modern_Back_To_Top_Button_settings', 'modern_back_to_top_do_activation_redirect');

