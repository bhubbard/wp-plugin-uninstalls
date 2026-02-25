-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpEventos-email', 'wpEventos-password', 'wpEventos-installed', 'wp-eventos');

