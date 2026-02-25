-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpup_file_download_method', 'wpup_members_per_page', 'wpup_version', 'wpup_frontend_page_id', 'wpup_supper_admin', 'wpup_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rows', '_cols', '_els', '_header', '_content_width', '_content_width_unit', 'profile_picture_id', 'first_name', 'last_name', 'description', 'wpup_birthday', 'wpup_location', 'wpup_phone', 'wpup_ele', 'wpup_header');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rows', '_cols', '_els', '_header', '_content_width', '_content_width_unit', 'profile_picture_id', 'first_name', 'last_name', 'description', 'wpup_birthday', 'wpup_location', 'wpup_phone', 'wpup_ele', 'wpup_header');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rows', '_cols', '_els', '_header', '_content_width', '_content_width_unit', 'profile_picture_id', 'first_name', 'last_name', 'description', 'wpup_birthday', 'wpup_location', 'wpup_phone', 'wpup_ele', 'wpup_header');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rows', '_cols', '_els', '_header', '_content_width', '_content_width_unit', 'profile_picture_id', 'first_name', 'last_name', 'description', 'wpup_birthday', 'wpup_location', 'wpup_phone', 'wpup_ele', 'wpup_header');

