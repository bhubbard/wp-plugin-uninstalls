-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('__gutentor_do_redirect', 'gutentor_settings_options', '__gutentor_helper_options', 'gutentor_widget_dcss', 'widget_block', '__templateberg_do_redirect', 'gutentor_get_template_library');
DELETE FROM wp_options WHERE option_name LIKE 'gutentor-cat-%';
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';
DELETE FROM wp_options WHERE option_name LIKE 'gutentor_get_block_json_%';
DELETE FROM wp_options WHERE option_name LIKE 'gutentor_meta_keys_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gutentor_meta', 'gutentor_edd_demo_url', 'gutentor_meta_video_url', 'gutentor_meta_video_id', 'thumbnail_id', 'gutentor_templateberg_notice_calendar', 'gutentor_gfont_url', 'gutentor_css_info', 'gutentor_dynamic_css', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('gutentor_meta', 'gutentor_edd_demo_url', 'gutentor_meta_video_url', 'gutentor_meta_video_id', 'thumbnail_id', 'gutentor_templateberg_notice_calendar', 'gutentor_gfont_url', 'gutentor_css_info', 'gutentor_dynamic_css', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('gutentor_meta', 'gutentor_edd_demo_url', 'gutentor_meta_video_url', 'gutentor_meta_video_id', 'thumbnail_id', 'gutentor_templateberg_notice_calendar', 'gutentor_gfont_url', 'gutentor_css_info', 'gutentor_dynamic_css', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gutentor_meta', 'gutentor_edd_demo_url', 'gutentor_meta_video_url', 'gutentor_meta_video_id', 'thumbnail_id', 'gutentor_templateberg_notice_calendar', 'gutentor_gfont_url', 'gutentor_css_info', 'gutentor_dynamic_css', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_upgrade_to_pro_notice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_upgrade_to_pro_notice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_upgrade_to_pro_notice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_upgrade_to_pro_notice';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_upgrade_to_pro_notice_partially';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_upgrade_to_pro_notice_partially';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_upgrade_to_pro_notice_partially';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_upgrade_to_pro_notice_partially';

