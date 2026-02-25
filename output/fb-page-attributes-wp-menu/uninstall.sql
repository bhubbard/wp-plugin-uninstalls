-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('page_attributes_sync_nav_menu', 'fb_page_attributes_db_version');

