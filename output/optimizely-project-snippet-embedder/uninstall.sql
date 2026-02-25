-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mchl_optimizely_data', 'mchl_optimizely_project_id', 'mchl_optimizely_saveadmin_data');

