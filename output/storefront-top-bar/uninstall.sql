-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woa_sf_activation_notice');
DELETE FROM wp_options WHERE option_name LIKE '%-version';

