-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nbm_important');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nbm_address', '_nbm_do_u_define_coords', '_nbm_coords', '_nbm_coords_sexa', '_nbm_icon', '_nbm_tel', '_nbm_email', '_nbm_website', '_nbm_hours', '_nbm_type_of_place', '_nbm_important', '_nbm_size');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nbm_address', '_nbm_do_u_define_coords', '_nbm_coords', '_nbm_coords_sexa', '_nbm_icon', '_nbm_tel', '_nbm_email', '_nbm_website', '_nbm_hours', '_nbm_type_of_place', '_nbm_important', '_nbm_size');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nbm_address', '_nbm_do_u_define_coords', '_nbm_coords', '_nbm_coords_sexa', '_nbm_icon', '_nbm_tel', '_nbm_email', '_nbm_website', '_nbm_hours', '_nbm_type_of_place', '_nbm_important', '_nbm_size');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nbm_address', '_nbm_do_u_define_coords', '_nbm_coords', '_nbm_coords_sexa', '_nbm_icon', '_nbm_tel', '_nbm_email', '_nbm_website', '_nbm_hours', '_nbm_type_of_place', '_nbm_important', '_nbm_size');

