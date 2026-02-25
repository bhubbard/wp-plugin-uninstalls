-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('puca_enable_cache', 'puca_cache_lifetime', 'puca_enable_compression', 'puca_minify_html', 'puca_lazy_load', 'puca_plugin_version');

