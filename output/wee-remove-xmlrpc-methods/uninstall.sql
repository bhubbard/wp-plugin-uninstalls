-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wee_remove_xmlrpc_methods_default_ping_status_original');

