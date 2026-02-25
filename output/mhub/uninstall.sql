-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mhub_do_activation_redirect', 'mhub_wp_target_url');

