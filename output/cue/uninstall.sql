-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cue_default_theme', 'cue_native_theme');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tracks');
DELETE FROM wp_usermeta WHERE meta_key IN ('tracks');
DELETE FROM wp_termmeta WHERE meta_key IN ('tracks');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tracks');

