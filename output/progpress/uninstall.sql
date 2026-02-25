-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jcp_progpress_nanowrimo', 'jcp_progpress');
DELETE FROM wp_options WHERE option_name LIKE 'jcp_pp_%';

