-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wds_global_options', 'wds_theme_version', 'tenweb_notice_status', 'wds_version', 'wds_subscribe_done', 'wds_loading_gif', 'wds_register_scripts', 'two-front-page-speed', 'twb_images_total_size', 'twb_speed_score', 'tenweb_domain_id', 'tenweb_access_token', 'twb_show_cta', 'twb_hompage_optimized', 'wds_version_1.0.46', 'twb_optimized_pages', 'tenweb_subscription_id', 'wds_update_check');
DELETE FROM wp_options WHERE option_name LIKE '%_workspace_id';
DELETE FROM wp_options WHERE option_name LIKE '%_domain_id';
DELETE FROM wp_options WHERE option_name LIKE '%_global_options';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_admin_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('two_page_speed', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('two_page_speed', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('two_page_speed', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('two_page_speed', 'first_name', 'last_name');

