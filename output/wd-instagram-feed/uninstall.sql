-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wdi_token_error_flag', 'wdi_sample_feed_post_id', 'wdi_version', 'wdi_sample_feed_id', 'wdi_sample_feed_post_url', 'wdi_first_user_username', 'wdi_theme_keys', 'wdi_admin_notice', 'wdi_subscribe_done', 'wdi_redirect_to_settings', 'widget_wdi_instagram_widget', 'wdi_current_cache_time', 'two-front-page-speed', 'twb_images_total_size', 'twb_speed_score', 'tenweb_domain_id', 'tenweb_access_token', 'twb_show_cta', 'twb_hompage_optimized', 'wdi_instagram_options', 'wdi_update_check', 'twb_optimized_pages', 'tenweb_subscription_id');
DELETE FROM wp_options WHERE option_name LIKE 'wdi_cache_success_%';
DELETE FROM wp_options WHERE option_name LIKE '%_workspace_id';
DELETE FROM wp_options WHERE option_name LIKE '%_domain_id';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_admin_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_subscribe_done';
DELETE FROM wp_options WHERE option_name LIKE '%_overview_visited';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('two_page_speed', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('two_page_speed', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('two_page_speed', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('two_page_speed', 'first_name', 'last_name');

