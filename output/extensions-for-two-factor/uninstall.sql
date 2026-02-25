-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('two_factor_extensions_basics', 'two_factor_extensions_debug');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_new_mobile', 'mobile');
DELETE FROM wp_usermeta WHERE meta_key IN ('_new_mobile', 'mobile');
DELETE FROM wp_termmeta WHERE meta_key IN ('_new_mobile', 'mobile');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_new_mobile', 'mobile');

