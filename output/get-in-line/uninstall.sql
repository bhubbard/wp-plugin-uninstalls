-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('getinline_api', 'getinline_project_key', 'getinline_project_widget', 'getinline_project_language');

