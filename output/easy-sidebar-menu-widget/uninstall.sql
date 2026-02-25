-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_sidebar_menu_widget_RatingDiv', 'easy_sidebar_menu_widget_installDate');

