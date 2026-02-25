-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7-polylang-admin-notices', 'polylang');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_locale', '_messages');
DELETE FROM wp_usermeta WHERE meta_key IN ('_locale', '_messages');
DELETE FROM wp_termmeta WHERE meta_key IN ('_locale', '_messages');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_locale', '_messages');

