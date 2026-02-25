-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('timezone', 'ip', 'proxy', 'curl_module', 'first', 'msg', 'redirect', 'tor', 'ua', 'log', 'ownserverip', 'curl_extension');

