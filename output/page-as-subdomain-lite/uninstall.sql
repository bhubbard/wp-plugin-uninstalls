-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pages_subdomain', 'pagessubdomain_donottrack', 'rewrite_rules', 'rewrite_rules');

