-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hide_vuukle_admin_notice', 'Activated_Vuukle_Plugin_Date', 'Activated_Vuukle_Plugin', 'Vuukle', 'Vuukle_App_Id');

