-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('powr_token', 'powr_powr_pack_plugin_do_activation_redirect', 'powr_install_time');

