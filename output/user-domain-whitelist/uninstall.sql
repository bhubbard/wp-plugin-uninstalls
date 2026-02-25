-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mode', 'domain_whitelist', 'domain_blacklist', 'bad_domain_message');

