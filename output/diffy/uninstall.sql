-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('diffy_api_key', 'diffy_project_id', 'diffy_first_screenshot_id', 'diffy_second_screenshot_id', 'diffy_diff_id');

