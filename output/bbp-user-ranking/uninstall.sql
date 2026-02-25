-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bur_display', 'bur_ranks', 'bur_badges', 'bur_css');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('force_user_level', 'bur_badges');
DELETE FROM wp_usermeta WHERE meta_key IN ('force_user_level', 'bur_badges');
DELETE FROM wp_termmeta WHERE meta_key IN ('force_user_level', 'bur_badges');
DELETE FROM wp_commentmeta WHERE meta_key IN ('force_user_level', 'bur_badges');

