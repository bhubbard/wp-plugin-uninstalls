-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('id2wp_settings_applications_folder');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('id2wp_hits', 'id2wp_zip_name', 'id2wp_project_folder_name', 'id2wp_img_optimize', 'id2wp_password_protect', 'id2wp_protection_password', 'id2wp_arrow_color_text', 'id2wp_arrow_color_bg', 'id2wp_general_color', 'id2wp_custom_css', 'id2wp_meta_title', 'id2wp_meta_description', 'id2wp_password_protection', 'id2wp_password', 'id2wp_project_dir', 'id2wp_project_identifier');
DELETE FROM wp_usermeta WHERE meta_key IN ('id2wp_hits', 'id2wp_zip_name', 'id2wp_project_folder_name', 'id2wp_img_optimize', 'id2wp_password_protect', 'id2wp_protection_password', 'id2wp_arrow_color_text', 'id2wp_arrow_color_bg', 'id2wp_general_color', 'id2wp_custom_css', 'id2wp_meta_title', 'id2wp_meta_description', 'id2wp_password_protection', 'id2wp_password', 'id2wp_project_dir', 'id2wp_project_identifier');
DELETE FROM wp_termmeta WHERE meta_key IN ('id2wp_hits', 'id2wp_zip_name', 'id2wp_project_folder_name', 'id2wp_img_optimize', 'id2wp_password_protect', 'id2wp_protection_password', 'id2wp_arrow_color_text', 'id2wp_arrow_color_bg', 'id2wp_general_color', 'id2wp_custom_css', 'id2wp_meta_title', 'id2wp_meta_description', 'id2wp_password_protection', 'id2wp_password', 'id2wp_project_dir', 'id2wp_project_identifier');
DELETE FROM wp_commentmeta WHERE meta_key IN ('id2wp_hits', 'id2wp_zip_name', 'id2wp_project_folder_name', 'id2wp_img_optimize', 'id2wp_password_protect', 'id2wp_protection_password', 'id2wp_arrow_color_text', 'id2wp_arrow_color_bg', 'id2wp_general_color', 'id2wp_custom_css', 'id2wp_meta_title', 'id2wp_meta_description', 'id2wp_password_protection', 'id2wp_password', 'id2wp_project_dir', 'id2wp_project_identifier');

