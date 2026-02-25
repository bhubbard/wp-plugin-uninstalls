-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lorybot_options', 'lorybot_server_url', 'lorybot_version', 'lorybot_do_activation_redirect');

