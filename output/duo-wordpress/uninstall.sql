-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('duo_ikey', 'duo_skey', 'duo_host', 'duo_roles', 'duo_xmlrpc', 'duo_akey');

