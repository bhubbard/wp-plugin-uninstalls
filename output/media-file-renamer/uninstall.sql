-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mfrh_force_rename', 'mfrh_sync_alt', 'mfrh_sync_media_title', 'force_sslverify', 'meowapps_hide_meowapps', 'litespeed.conf.cache-rest', 'mwai_options', 'meowapps_news', 'mfrh_options');
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial';
DELETE FROM wp_options WHERE option_name LIKE '%_rating_date';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_require_file_renaming', '_manual_file_renaming', '_mfrh_history', '_mfrh_proposed_filename', '_mfrh_used_method', '_mfrh_ideal_filename', '_mfrh_proposed_filename_exists', '_original_filename', '_mfrh_keep_filename');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_require_file_renaming', '_manual_file_renaming', '_mfrh_history', '_mfrh_proposed_filename', '_mfrh_used_method', '_mfrh_ideal_filename', '_mfrh_proposed_filename_exists', '_original_filename', '_mfrh_keep_filename');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_require_file_renaming', '_manual_file_renaming', '_mfrh_history', '_mfrh_proposed_filename', '_mfrh_used_method', '_mfrh_ideal_filename', '_mfrh_proposed_filename_exists', '_original_filename', '_mfrh_keep_filename');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_require_file_renaming', '_manual_file_renaming', '_mfrh_history', '_mfrh_proposed_filename', '_mfrh_used_method', '_mfrh_ideal_filename', '_mfrh_proposed_filename_exists', '_original_filename', '_mfrh_keep_filename');

