-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eelv_url_redirect', 'eelv_when_redirect', 'eelv_code_redirect');

