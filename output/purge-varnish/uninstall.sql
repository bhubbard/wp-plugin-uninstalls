-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('varnish_socket_timeout', 'varnish_control_terminal', 'varnish_version', 'varnish_control_key', 'purge_varnish_expire', 'purge_varnish_action', 'varnish_bantype');

