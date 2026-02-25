-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plerdy_tracking_script', 'plerdy_abtracking_script', 'checkbox');

