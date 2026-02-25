-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hug_zapier_url', 'hug_zapier_log', 'hug_httponly_cookies', 'hug_append_all', 'check_v2717_doc');

