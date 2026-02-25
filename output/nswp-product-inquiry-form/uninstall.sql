-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nswp_pif_opts', 'nswp_pif_plugin_options', 'nswp_pif_install_notice');

