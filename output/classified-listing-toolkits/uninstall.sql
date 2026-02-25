-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rtcl_installed_from');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_views', '_rtcl_image', '_rtcl_icon', 'rtcl_favourites', 'phone', '_rtcl_pp_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_views', '_rtcl_image', '_rtcl_icon', 'rtcl_favourites', 'phone', '_rtcl_pp_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_views', '_rtcl_image', '_rtcl_icon', 'rtcl_favourites', 'phone', '_rtcl_pp_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_views', '_rtcl_image', '_rtcl_icon', 'rtcl_favourites', 'phone', '_rtcl_pp_id');

