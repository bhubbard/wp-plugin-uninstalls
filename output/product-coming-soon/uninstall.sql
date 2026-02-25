-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pcsw-admin-options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_coming_soon', '_coming_soon_heading');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_coming_soon', '_coming_soon_heading');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_coming_soon', '_coming_soon_heading');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_coming_soon', '_coming_soon_heading');

