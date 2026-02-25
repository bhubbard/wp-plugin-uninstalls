-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('op_dashboard_widget_blocks', 'occupancy_plan_db_version');
DELETE FROM wp_options WHERE option_name LIKE 'occupancy_plan_state_%';

