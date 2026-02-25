-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('analytics_data_code', 'analytics_tracking', 'analytics_data_admin_traffic', 'analytics_data_editor_traffic', 'analytics_data_404_traffic');

