-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('memory_limit_manager_success', 'memory_limit_manager_errors');
DELETE FROM wp_options WHERE option_name LIKE 'memory_limit_manager_errors_%';
DELETE FROM wp_options WHERE option_name LIKE 'memory_limit_manager_attempted_values_%';
DELETE FROM wp_options WHERE option_name LIKE 'memory_limit_manager_success_%';

