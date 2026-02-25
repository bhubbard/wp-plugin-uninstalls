-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('id_before_menu', 'id_menumaker_pullpage', 'id_before_item', 'id_after_item', 'id_before_active_item', 'id_after_active_item', 'id_after_menu', 'id_menumaker_number', 'id_menumaker_maxnum', 'id_menumaker_menu_1');

