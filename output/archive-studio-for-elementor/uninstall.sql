-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('archstel_layout_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('category_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('category_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('category_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('category_color');

