-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('expandops_access_code_lite', 'expandops_admin_notices');

