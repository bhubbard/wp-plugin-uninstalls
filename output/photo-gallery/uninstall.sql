-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wd_bwg_options', 'wd_bwg_version', 'wd_bwg_initial_version', 'bwg_subscribe_done', 'tenweb_notice_status', 'tenweb_notice_version', 'bwg_subscribe_email', 'two-front-page-speed', 'twb_images_total_size', 'twb_speed_score', 'tenweb_domain_id', 'tenweb_access_token', 'twb_show_cta', 'bwg_onboarding_step', 'bwg_magic_data', 'twb_hompage_optimized', 'bwg_filemanager_sorting', 'bwg_gallery_sorting', 'bwg_speed', 'tenweb_admin_demo', 'bwg_wp_editor_state', 'tenweb_user_info', 'twb_optimized_pages', 'tenweb_subscription_id', 'bwg_update_check');
DELETE FROM wp_options WHERE option_name LIKE '%_workspace_id';
DELETE FROM wp_options WHERE option_name LIKE '%_domain_id';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_admin_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bwg_photo_gallery', 'first_name', 'last_name', 'two_page_speed');
DELETE FROM wp_usermeta WHERE meta_key IN ('bwg_photo_gallery', 'first_name', 'last_name', 'two_page_speed');
DELETE FROM wp_termmeta WHERE meta_key IN ('bwg_photo_gallery', 'first_name', 'last_name', 'two_page_speed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bwg_photo_gallery', 'first_name', 'last_name', 'two_page_speed');

