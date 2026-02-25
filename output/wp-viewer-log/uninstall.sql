-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpvl-options', 'wpvl-version', 'wpvl_log_error', 'wpvl_config_error');

