-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('starter_sites_settings', 'wpmapblock_ablocks_install_notice_hidden', 'gutena_forms_dismiss_notices', 'block_visibility_settings', 'starter_sites_activated', 'starter_sites_do_activation_redirect', 'starter_sites_demo_list');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('starter_sites_file', 'eternal_admin_notice_dismiss', 'acai_admin_notice_dismiss', 'starter_sites_url', 'starter_sites_review_notice_dismiss', 'starter_sites_admin_fullpage', 'starter_sites_admin_darkmode', '_thumbnail_id', '_wp_font_face_file', '_product_image_gallery', 'thumbnail_id', 'starter_sites_import_parent_theme', 'starter_sites_import_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('starter_sites_file', 'eternal_admin_notice_dismiss', 'acai_admin_notice_dismiss', 'starter_sites_url', 'starter_sites_review_notice_dismiss', 'starter_sites_admin_fullpage', 'starter_sites_admin_darkmode', '_thumbnail_id', '_wp_font_face_file', '_product_image_gallery', 'thumbnail_id', 'starter_sites_import_parent_theme', 'starter_sites_import_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('starter_sites_file', 'eternal_admin_notice_dismiss', 'acai_admin_notice_dismiss', 'starter_sites_url', 'starter_sites_review_notice_dismiss', 'starter_sites_admin_fullpage', 'starter_sites_admin_darkmode', '_thumbnail_id', '_wp_font_face_file', '_product_image_gallery', 'thumbnail_id', 'starter_sites_import_parent_theme', 'starter_sites_import_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('starter_sites_file', 'eternal_admin_notice_dismiss', 'acai_admin_notice_dismiss', 'starter_sites_url', 'starter_sites_review_notice_dismiss', 'starter_sites_admin_fullpage', 'starter_sites_admin_darkmode', '_thumbnail_id', '_wp_font_face_file', '_product_image_gallery', 'thumbnail_id', 'starter_sites_import_parent_theme', 'starter_sites_import_title');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'starter_sites_admin_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'starter_sites_admin_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'starter_sites_admin_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'starter_sites_admin_%';

