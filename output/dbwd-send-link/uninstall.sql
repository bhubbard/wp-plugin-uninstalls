-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('DBWD_Menu_Control', 'DBWD_Send_Link_Lite', 'DBWD_Send_Link_to_Page');

