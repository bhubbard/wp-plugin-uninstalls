-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qweb_aca_access_key', 'qweb_aca_allowed_countries', 'qweb_aca_allow_known_proxies', 'qweb_aca_block_xmlrpc_access', 'qweb_aca_quota_reached');

