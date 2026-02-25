-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simplify_dashboard_menu_items', 'simplify_dashboard_topbar_items');

