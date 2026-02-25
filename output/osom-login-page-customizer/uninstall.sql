-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('osom_lc_settings', 'osom_lc_do_activation_redirect');

