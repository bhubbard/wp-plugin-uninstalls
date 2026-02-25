-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('affiamsh_cache_ver', 'affiamsh_plugin_settings', 'affiamsh_pro_display_options', 'affiamsh_is_pro', 'affiamsh_license_key');

