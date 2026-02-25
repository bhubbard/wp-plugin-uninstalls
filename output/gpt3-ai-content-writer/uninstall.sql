-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpaicw_option_name', 'wpaic_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%options';

