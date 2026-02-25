#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'visibl_subscription_status'
wp option delete 'visibl_cancel_at'
wp option delete 'visibl_license_key'
wp option delete 'visibl_onboarding_dismissed'
wp option delete 'visibl_installed'
wp option delete 'visibl_registration_email'
wp option delete 'visibl_registration_dismissed'
wp option delete 'visibl_business_info'
wp option delete 'visibl_first_post_optimized'
wp option delete 'visibl_bulk_explored'
wp option delete 'visibl_import_completed'
wp option delete 'visibl_coexist_mode'
wp option delete 'visibl_seo_settings'
wp option delete 'visibl_ai_activity_log'
wp option delete 'visibl_needs_activation_ping'
wp option delete 'visibl_last_ping'
wp option delete 'visibl_site_id'
wp option delete 'visibl_free_api_key'
wp option delete 'visibl_scores_calculated'
wp option delete 'visibl_registration_consent'
wp option delete 'visibl_registration_consent_at'
wp option delete 'visibl_index_optin'
wp option delete 'visibl_marketing_optin'
wp option delete 'visibl_registered_at'
wp option delete 'visibl_score_history'
wp option delete 'visibl_opportunities'
wp option delete 'visibl_opportunities_updated'
wp option delete 'visibl_opportunities_dismissed'
wp option delete 'visibl_alerts'
wp option delete 'visibl_active_tier'
wp option delete 'visibl_activation_count'
wp option delete 'visibl_max_sites'
wp option delete 'visibl_llms_txt_generated'
wp option delete 'visibl_citation_results'
wp option delete 'visibl_citation_monthly_monitoring'
wp option delete 'visibl_api_notice_dismissed'
wp option delete 'visibl_version'

# Delete Transients
wp transient delete 'visibl_credits_cache'
wp transient delete 'update_plugins'
wp transient delete 'visibl_llms_txt'
wp transient delete 'visibl_llms_txt_full'

# Clear Cron Jobs
wp cron event delete 'visibl_keyword_sync'
wp cron event delete 'visibl_scores_sync'
wp cron event delete 'visibl_daily_ping'
wp cron event delete 'visibl_initial_sync'
wp cron event delete 'visibl_weekly_digest'
wp cron event delete 'visibl_daily_score_check'
wp cron event delete 'visibl_daily_license_check'
wp cron event delete 'visibl_monthly_monitoring_cron'
wp cron event delete 'wp_maybe_auto_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_seo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_seo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_seo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_seo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_seo_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_seo_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_seo_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_seo_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_seo_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_seo_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_seo_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_seo_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_seo_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_seo_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_seo_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_seo_canonical'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_smo_og_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_smo_og_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_smo_og_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_smo_og_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_smo_og_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_smo_og_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_smo_og_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_smo_og_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_smo_og_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_smo_og_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_smo_og_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_smo_og_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_smo_twitter_card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_smo_twitter_card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_smo_twitter_card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_smo_twitter_card'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_smo_og_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_smo_og_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_smo_og_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_smo_og_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_schema_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_schema_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_schema_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_schema_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_faq_pairs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_faq_pairs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_faq_pairs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_faq_pairs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_entities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_entities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_entities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_entities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_custom_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_custom_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_custom_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_custom_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_originals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_originals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_originals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_originals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_schema_faq'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_schema_faq'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_schema_faq'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_schema_faq'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_ae_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_ae_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_ae_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_ae_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_seo_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_seo_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_seo_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_seo_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_smo_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_smo_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_smo_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_smo_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_pro_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_pro_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_pro_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_pro_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibl_aeo_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibl_aeo_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibl_aeo_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibl_aeo_score'"
