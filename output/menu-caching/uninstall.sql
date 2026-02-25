-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dc_menu_html_index', 'dc_menu_nonces_index', 'dc_mc_nocache_menus');
DELETE FROM wp_options WHERE option_name LIKE 'dc_menu_html_%';

