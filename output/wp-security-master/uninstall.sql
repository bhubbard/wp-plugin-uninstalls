-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_security_master', 'wp_security_master_key', 'wp_security_master_time', 'wp_security_master_time_value', 'wp_security_master_time_unit', 'wp_security_master_activate_state');

