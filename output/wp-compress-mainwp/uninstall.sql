-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpic_mainwp_debug', 'ic_mainwp_connected', 'mainwp_wpcompress_extension_activated');

