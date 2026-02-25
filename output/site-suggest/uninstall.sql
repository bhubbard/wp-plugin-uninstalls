-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stsgt_settings_data', 'stsgt_site_speed_data', 'stsgt_cron_scanning_complete', 'stsgt_real_cron_obsv_started', 'stsgt_real_cron_obsv_checklists', 'stsgt_real_cron_obsv_post_page', 'stsgt_real_cron_obsv_post_ids', 'stsgt_cron_progress', 'stsgt_cron_total_progress', 'stsgt_checked_schema_markups', 'stsgt_robots_txt_content', 'stsgt_robots_prev_txt_content', 'stsgt_approve_tech_data', 'stsgt_total_http_array', 'stsgt_cron_observers', 'stsgt_last_audit', 'stsgt_cron_toggle', 'stsgt_peak_memory_limit', 'wp_mail_smtp', 'postman_options', 'easy_wp_smtp', 'smtp_mailer_options', 'fluentmail-settings', 'bricks_global_settings', 'et_divi', 'wpcaptcha_options', 'elementor_pro_recaptcha_site_key', 'elementor_pro_recaptcha_secret_key', 'elementor_pro_recaptcha_v3_site_key', 'elementor_pro_recaptcha_v3_secret_key', 'stsgt_analytics_fetch_time', 'stsgt_analytics_data', 'rank-math-options-sitemap', 'enable_xml_sitemap', 'stsgt_repeat_cron_timeout', 'stsgt_h1_tag_pages_offset', 'stsgt_total_http_coutns', 'stsgt_large_images', 'stsgt_recaptcha_pages', 'stsgt_h1_tag_pages', 'stsgt_redirect_permission', 'update_plugins', 'crontrol-cron-test-ok', 'cached_site_health_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('stsgt_site_speed_data', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('stsgt_site_speed_data', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('stsgt_site_speed_data', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('stsgt_site_speed_data', '_wp_attachment_image_alt');

