-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shcs_activation_notice');
DELETE FROM wp_options WHERE option_name LIKE '%-version';

