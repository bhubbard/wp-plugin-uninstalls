#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'surerank_onboarding_skipped'
wp option delete 'surerank_redirect_on_activation'
wp option delete 'surerank_onboarding_completed'
wp option delete 'surerank_welcome_video'
wp option delete 'zipwp_user_business_details'
wp option delete 'surerank_completed_migrations'
wp option delete 'surerank_migration_ever_completed'
wp option delete 'surerank_auth'
wp option delete 'surerank_sitemap_classes'
wp option delete 'surerank_cache_generation_post_offset'
wp option delete 'woocommerce_permalinks'
wp option delete 'surerank_gsc_verification_token'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'surerank_cron_test_ok'
wp option delete 'surerank_google_console_credentials'
wp option delete 'rank-math-options-titles'
wp option delete 'rank-math-options-sitemap'
wp option delete 'seopress_titles_option_name'
wp option delete 'seopress_social_option_name'
wp option delete 'seopress_xml_sitemap_option_name'
wp option delete 'seopress_advanced_option_name'
wp option delete 'wpseo_taxonomy_meta'
wp option delete 'wpseo_titles'
wp option delete 'wpseo_social'
wp option delete 'wpseo'
wp option delete 'allowed_astra_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_optin'"
wp option delete 'bsf_usage_last_displayed_time'
wp option delete 'bsf_usage_migrated'
wp option delete 'bsf_analytics_last_displayed_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_installed_time'"
wp option delete 'surerank_settings_onboarding'
wp option delete 'surerank_usage_optin'
wp option delete 'surerank_email_reports_settings'
wp option delete 'surerank_email_reports_cron_cleanup_done'
wp option delete 'surerank_email_report_last_sent'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'surerank_flush_required'
wp option delete 'rewrite_rules'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'bsf_analytics_track'
wp transient delete 'bsf_usage_track'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_surerank_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_surerank_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_surerank_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_surerank_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_surerank_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_surerank_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_surerank_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_surerank_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'surerank_settings_general'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'surerank_settings_general'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'surerank_settings_general'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'surerank_settings_general'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'surerank_seo_checks_last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'surerank_seo_checks_last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'surerank_seo_checks_last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'surerank_seo_checks_last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'surerank_settings_post_no_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'surerank_settings_post_no_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'surerank_settings_post_no_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'surerank_settings_post_no_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fusion_builder_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fusion_builder_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fusion_builder_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fusion_builder_status'"
