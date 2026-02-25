-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('axSidebar_db_version', 'axSidebar_code_version', 'ax_sidebar_widget_options');

