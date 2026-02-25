-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsp_ref_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpsp_is_static', 'wpsp_cat_is_static');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpsp_is_static', 'wpsp_cat_is_static');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpsp_is_static', 'wpsp_cat_is_static');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpsp_is_static', 'wpsp_cat_is_static');

