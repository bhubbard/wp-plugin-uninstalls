-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mgpd_update_notice_1_2_53', 'mgpd_pro_info_text1', 'mgposte_install_date', 'mgelhide9', 'has_magical_posts_pro', 'mgposte_plugin_activated', 'mgposte_latest_activated');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mpd_my_post_viewed', 'mp_post_post_viewed', 'mp_post_week_viewed', 'mp_post_view_time', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('mpd_my_post_viewed', 'mp_post_post_viewed', 'mp_post_week_viewed', 'mp_post_view_time', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('mpd_my_post_viewed', 'mp_post_post_viewed', 'mp_post_week_viewed', 'mp_post_view_time', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mpd_my_post_viewed', 'mp_post_post_viewed', 'mp_post_week_viewed', 'mp_post_view_time', '_wp_page_template');

