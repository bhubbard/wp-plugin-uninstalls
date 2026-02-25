-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csp_manager_admin', 'csp_manager_loggedin', 'csp_manager_frontend');
DELETE FROM wp_options WHERE option_name LIKE 'csp_manager_%';

