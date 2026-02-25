-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cryptophoto_publickey', 'cryptophoto_privatekey', 'cryptophoto_salt', 'cryptophoto_server', 'cryptophoto_roles');

