-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fleximenu_wc_menu_labels', 'fleximenu_wc_unset_menu_labels');

