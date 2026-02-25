-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('set_flakeCount', 'set_minSize', 'set_maxSize', 'set_maxSpeed');

