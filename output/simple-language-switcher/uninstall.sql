-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sls_plugin_langs', 'sls_plugin_langs_backup', 'sls_plugin_linking', 'sls_plugin_linking_backup', 'sls_plugin_options');

