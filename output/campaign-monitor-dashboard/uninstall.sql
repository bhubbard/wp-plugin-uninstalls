-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cm_api_option', 'cm_list_id_option', 'cm_dashboard_widget_option');

