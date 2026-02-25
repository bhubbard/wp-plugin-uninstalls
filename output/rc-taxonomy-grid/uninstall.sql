-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rctagr_admin_notice');
DELETE FROM wp_options WHERE option_name LIKE '%_in';

