-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mobiloud_smart_app_banner', 'Activated_Mobiloud_Smart_App_Banner');

