-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gcheck_version', 'gcheck_current_security_code', 'gcheck_show_detailed_instructions');

