-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsbg_optionsframework');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpstoryboardgalleries_gallery', 'wpstoryboardgalleries_auto_open');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpstoryboardgalleries_gallery', 'wpstoryboardgalleries_auto_open');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpstoryboardgalleries_gallery', 'wpstoryboardgalleries_auto_open');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpstoryboardgalleries_gallery', 'wpstoryboardgalleries_auto_open');

