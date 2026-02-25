-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easyshare_icons_path', 'easyshare_mode', 'easyshare_title', 'easyshare_bookmarktext', 'easyshare_class', 'easyshare_position_article', 'easyshare_position_page', 'easyshare_custom_css', 'easyshare_services_liste', 'easyshare_services', 'easyshare_test_mode');

