-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('update_plugins', 'gops_error', 'gops_notice');
DELETE FROM wp_options WHERE option_name LIKE '%rating_asked';

