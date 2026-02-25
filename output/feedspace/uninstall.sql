-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('feedspace_activated', 'feedspace_options', 'feedspace_preserve_settings_on_uninstall', 'feedspace_block_assets', 'feedspace_plugin_path');

