-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gxsb_widget_class', 'gxsb_widget_title_class', 'category_sidebars');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gx_sidebar');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gx_sidebar');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gx_sidebar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gx_sidebar');

