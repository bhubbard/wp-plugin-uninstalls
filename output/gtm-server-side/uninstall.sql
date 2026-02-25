-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gtm-server-side-admin-options');
DELETE FROM wp_options WHERE option_name LIKE '%__generated';

