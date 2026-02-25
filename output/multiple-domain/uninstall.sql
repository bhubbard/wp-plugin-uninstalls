-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('multiple-domain-domains', 'multiple-domain-ignore-default-ports', 'multiple-domain-add-canonical');

