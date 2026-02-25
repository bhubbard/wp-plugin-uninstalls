-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fae_herald_version', 'fae_herald_data', 'fae_herald_lifecycle', 'fae_herald_activation_notice', 'fae_herald_refresh_notice', 'fae_herald_refresh_plugin_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fae_herald_screen_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('fae_herald_screen_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('fae_herald_screen_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fae_herald_screen_options');

