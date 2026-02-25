-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('axc_slideshow_width', 'axc_slideshow_height', 'axc_slideshow_border_color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('slide');
DELETE FROM wp_usermeta WHERE meta_key IN ('slide');
DELETE FROM wp_termmeta WHERE meta_key IN ('slide');
DELETE FROM wp_commentmeta WHERE meta_key IN ('slide');

