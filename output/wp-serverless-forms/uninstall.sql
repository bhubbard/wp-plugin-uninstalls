-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_sls_forms_endpoint', 'wp_sls_forms_redirect');

