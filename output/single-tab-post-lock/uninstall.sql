-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('singtapo_do_activation_redirect', 'singtapo_settings');

