-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sflnc_activation_notice', 'activation_notice');
DELETE FROM wp_options WHERE option_name LIKE '%-version';

