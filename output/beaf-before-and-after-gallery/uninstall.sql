-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bafg_migrated', 'bafg_watermark', 'bafg_tools', 'beaf_settings', 'bafg_pro_activated', 'bafg_promo__schudle_start_from', 'bafg_sidebar_banner__schedule_option', 'tf_promo_notice_exists', 'bafg_promo_notice_woo_exists', 'tf_promo_widget_exists', 'bafg_dashboard_widget_dismissed', 'bafg_dismiss_admin_notice', 'bafg_dismiss_post_notice', 'bafg_sidebar_banner_notice_exists', 'bafg_installation_date', 'bafg_review_notice_status', 'beaf_pro_license_status', 'bafg_filter_gallery_style_alignment', 'bafg_filter_gallery_style_border', 'bafg_filter_gallery_style_text_color', 'bafg_filter_gallery_style_bg_color', 'bafg_filter_gallery_style_text_h_color', 'bafg_filter_gallery_style_bg_h_color', 'bafg_filter_gallery_style_padding_tb', 'bafg_filter_gallery_style_padding_lr');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('beaf_meta', 'bafg_woo_new_feature_notice_dismissed', 'tf_hotels_opt', 'bafg_show_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('beaf_meta', 'bafg_woo_new_feature_notice_dismissed', 'tf_hotels_opt', 'bafg_show_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('beaf_meta', 'bafg_woo_new_feature_notice_dismissed', 'tf_hotels_opt', 'bafg_show_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('beaf_meta', 'bafg_woo_new_feature_notice_dismissed', 'tf_hotels_opt', 'bafg_show_title');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'beaf_fomo_first_visit_time_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'beaf_fomo_first_visit_time_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'beaf_fomo_first_visit_time_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'beaf_fomo_first_visit_time_%';

