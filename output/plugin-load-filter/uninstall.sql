-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'plf_option', 'plf_addon_options', 'plf_queryvars', 'permalink-manager-uris', 'celtis_addon_options', 'rewrite_rules', 'plf_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_locale', '_plugin_load_filter', '_original_post_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_locale', '_plugin_load_filter', '_original_post_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_locale', '_plugin_load_filter', '_original_post_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_locale', '_plugin_load_filter', '_original_post_id');

