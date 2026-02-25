-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpdt_quick_profiler', 'wpdt_log_predefined_php', 'save_log_predefined_php', 'wpdt_login_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'wpdt_%';

