-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ewz_rating_version', 'ewz_admin_delete_rating', 'ewz_max_unsaved', 'ewz_init_img_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ewz_useradio', 'ewz_nextafter');
DELETE FROM wp_usermeta WHERE meta_key IN ('ewz_useradio', 'ewz_nextafter');
DELETE FROM wp_termmeta WHERE meta_key IN ('ewz_useradio', 'ewz_nextafter');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ewz_useradio', 'ewz_nextafter');

