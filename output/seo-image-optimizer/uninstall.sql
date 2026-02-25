-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weblizar_wsio_options', 'weblizar_naf_options', 'wsio_nht_plugin_do_activation_redirect');

