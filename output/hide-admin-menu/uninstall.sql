-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hide_menu_bh_plugin', 'hide_sub_menu_bh_plugin', 'hide_top_menu_bh_plugin');

