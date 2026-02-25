-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('is_vue_load_env_option', 'is_vue_load_overide');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_vue_load');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_vue_load');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_vue_load');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_vue_load');

