-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('subdomain_function', 'rewrite_rules', 'rewrite_rules');

