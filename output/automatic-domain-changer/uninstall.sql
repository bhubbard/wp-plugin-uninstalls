-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_domain_change-https', 'auto_domain_change-www', 'auto_domain_change-domain', 'auto_domain_change-dismiss');

