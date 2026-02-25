-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('surerank_onboarding_skipped', 'surerank_redirect_on_activation', 'surerank_onboarding_completed', 'surerank_welcome_video', 'zipwp_user_business_details', 'surerank_completed_migrations', 'surerank_migration_ever_completed', 'surerank_auth', 'surerank_sitemap_classes', 'surerank_cache_generation_post_offset', 'woocommerce_permalinks', 'surerank_gsc_verification_token', 'woocommerce_shop_page_id', 'surerank_cron_test_ok', 'surerank_google_console_credentials', 'rank-math-options-titles', 'rank-math-options-sitemap', 'seopress_titles_option_name', 'seopress_social_option_name', 'seopress_xml_sitemap_option_name', 'seopress_advanced_option_name', 'wpseo_taxonomy_meta', 'wpseo_titles', 'wpseo_social', 'wpseo', 'allowed_astra_notices', 'bsf_usage_last_displayed_time', 'bsf_usage_migrated', 'bsf_analytics_last_displayed_time', 'surerank_settings_onboarding', 'surerank_usage_optin', 'surerank_email_reports_settings', 'surerank_email_reports_cron_cleanup_done', 'surerank_email_report_last_sent', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id', 'woocommerce_myaccount_page_id', 'surerank_flush_required', 'rewrite_rules', 'bsf_analytics_track', 'bsf_usage_track');
DELETE FROM wp_options WHERE option_name LIKE '%_usage_optin';
DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin';
DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time';
DELETE FROM wp_options WHERE option_name LIKE '%_usage_installed_time';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_bricks_page_content_2', '_surerank_source_url', '_surerank_imported', 'surerank_settings_general', 'surerank_seo_checks_last_updated', 'product', 'surerank_settings_post_no_index', 'fusion_builder_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_bricks_page_content_2', '_surerank_source_url', '_surerank_imported', 'surerank_settings_general', 'surerank_seo_checks_last_updated', 'product', 'surerank_settings_post_no_index', 'fusion_builder_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_bricks_page_content_2', '_surerank_source_url', '_surerank_imported', 'surerank_settings_general', 'surerank_seo_checks_last_updated', 'product', 'surerank_settings_post_no_index', 'fusion_builder_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_bricks_page_content_2', '_surerank_source_url', '_surerank_imported', 'surerank_settings_general', 'surerank_seo_checks_last_updated', 'product', 'surerank_settings_post_no_index', 'fusion_builder_status');

