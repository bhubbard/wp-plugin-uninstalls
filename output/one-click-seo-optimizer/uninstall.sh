#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oneclickseo_api_key'
wp option delete 'oneclickseo_model'
wp option delete 'oneclickseo_site_analysis'
wp option delete 'oneclickseo_last_analysis'
wp option delete 'oneclickseo_optimization_options'
wp option delete 'oneclickseo_gsc_client_id'
wp option delete 'oneclickseo_gsc_client_secret'
wp option delete 'oneclickseo_last_audit'
wp option delete 'oneclickseo_post_types'
wp option delete 'oneclickseo_gsc_access_token'
wp option delete 'oneclickseo_gsc_refresh_token'
wp option delete 'oneclickseo_gsc_site_url'
wp option delete 'oneclickseo_language'
wp option delete 'oneclickseo_audit_stats'
wp option delete 'oneclickseo_multilingual_hreflang'
wp option delete 'oneclickseo_multilingual_sitemap_xhtml'
wp option delete 'oneclickseo_multilingual_separate_meta'
wp option delete 'oneclickseo_multilingual_notice_dismissed'
wp option delete 'oneclickseo_onboarding_completed'
wp option delete 'oneclickseo_site_type'
wp option delete 'oneclickseo_preset'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'oneclickseo_%'"
wp option delete 'oneclickseo_schema_default'
wp option delete 'oneclickseo_version'
wp option delete 'oneclickseo_auto_optimize'
wp option delete 'oneclickseo_engagement'
wp option delete 'oneclickseo_license_status'
wp option delete 'oneclickseo_edd_license_status'
wp option delete 'oneclickseo_last_audit_summary'
wp option delete 'oneclickseo_woo_auto_meta'
wp option delete 'oneclickseo_woo_title_template'
wp option delete 'oneclickseo_woo_desc_template'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'oneclickseo_gsc_error'
wp transient delete 'oneclickseo_gsc_success'
wp transient delete 'oneclickseo_oauth_state'
wp transient delete 'oneclickseo_audit_checked_urls'
wp transient delete 'oneclickseo_audit_titles'
wp transient delete 'oneclickseo_audit_descriptions'
wp transient delete 'oneclickseo_bulk_posts'
wp transient delete 'oneclickseo_bulk_progress'
wp transient delete 'oneclickseo_activation_redirect'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_h1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_h1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_h1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_h1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_page_objective'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_page_objective'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_page_objective'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_page_objective'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_target_audience'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_target_audience'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_target_audience'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_target_audience'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_content_suggestions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_content_suggestions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_content_suggestions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_content_suggestions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_internal_linking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_internal_linking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_internal_linking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_internal_linking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_schema_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_schema_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_schema_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_schema_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_schema_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_schema_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_schema_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_schema_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_readability_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_readability_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_readability_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_readability_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_content_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_content_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_content_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_content_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_last_analysis'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_last_analysis'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_last_analysis'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_last_analysis'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_og_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_og_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_og_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_og_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_og_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_og_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_og_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_og_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_og_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_og_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_og_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_og_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_twitter_card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_twitter_card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_twitter_card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_twitter_card'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_twitter_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_twitter_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_twitter_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_twitter_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_twitter_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_twitter_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_twitter_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_twitter_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_twitter_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_twitter_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_twitter_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_twitter_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_oneclickseo_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_oneclickseo_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_oneclickseo_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_oneclickseo_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_heading_updates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_heading_updates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_heading_updates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_heading_updates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_internal_linking_analysis'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_internal_linking_analysis'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_internal_linking_analysis'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_internal_linking_analysis'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_audit_page_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_audit_page_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_audit_page_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_audit_page_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_image_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_image_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_image_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_image_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_image_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_image_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_image_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_image_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_analysis'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_analysis'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_analysis'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_analysis'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_gtin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_mpn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_mpn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_mpn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_mpn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oneclickseo_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oneclickseo_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oneclickseo_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oneclickseo_brand'"
