-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('accordion_post_type_selected', 'choose_style', 'accordion_lightbox');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('accordion_fancy');
DELETE FROM wp_usermeta WHERE meta_key IN ('accordion_fancy');
DELETE FROM wp_termmeta WHERE meta_key IN ('accordion_fancy');
DELETE FROM wp_commentmeta WHERE meta_key IN ('accordion_fancy');

