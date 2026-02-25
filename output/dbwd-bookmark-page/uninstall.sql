-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('DBWD_Menu_Control', 'DBWD_Bookmark_Page_Lite', 'DBWD_bookmark_page');

