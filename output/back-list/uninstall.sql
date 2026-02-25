-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('back_list_blog', 'back_list_white', 'back_list_black');

