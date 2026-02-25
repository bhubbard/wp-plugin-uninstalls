-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sarvarov_lazy_load', 'sarvarov_lazy_load_dynamic_js', 'sarvarov_lazy_load_dynamic_css');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sarvarov_lazy_load_cache');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sarvarov_lazy_load_cache');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sarvarov_lazy_load_cache');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sarvarov_lazy_load_cache');

