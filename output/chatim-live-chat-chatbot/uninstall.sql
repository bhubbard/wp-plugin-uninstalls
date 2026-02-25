-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chatim_widget_project_id', 'chatim_widget_project_name');

