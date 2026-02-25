-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bokez_max_width', 'bokez_do_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'bokez_%';

