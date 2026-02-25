-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('allow_disallow_get_access', 'allow_disallow_multicall', 'allow_disallow_listmethods', 'allow_disallow_auth', 'allow_disallow_pingbacks', 'allow_disallow_header', 'allow_disallow_verify_agent', 'allow_disallow_send_agent', 'allow_disallow_demo', 'allow_disallow_blogger', 'allow_disallow_metaweblog', 'allow_disallow_movabletype', 'allowed_ip', 'methods_message');

