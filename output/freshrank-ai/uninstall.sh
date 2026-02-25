#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'freshrank_debug_mode'
wp option delete 'freshrank_whitelabel_enabled'
wp option delete 'freshrank_whitelabel_plugin_name'
wp option delete 'freshrank_whitelabel_logo_url'
wp option delete 'freshrank_whitelabel_primary_color'
wp option delete 'freshrank_whitelabel_support_email'
wp option delete 'freshrank_whitelabel_docs_url'
wp option delete 'freshrank_whitelabel_hide_branding'
wp option delete 'freshrank_custom_instructions_enabled'
wp option delete 'freshrank_custom_analysis_prompt'
wp option delete 'freshrank_custom_rewrite_prompt'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'freshrank_%'"
wp option delete 'freshrank_ai_provider'
wp option delete 'freshrank_openrouter_api_key'
wp option delete 'freshrank_openrouter_custom_model_analysis'
wp option delete 'freshrank_openrouter_model_analysis'
wp option delete 'freshrank_openai_api_key'
wp option delete 'freshrank_analysis_model'
wp option delete 'freshrank_rate_limit_delay'
wp option delete 'freshrank_deep_research_mode'
wp option delete 'freshrank_fix_factual_updates'
wp option delete 'freshrank_enable_web_search'
wp option delete 'freshrank_severity_high'
wp option delete 'freshrank_severity_medium'
wp option delete 'freshrank_severity_low'
wp option delete 'freshrank_fix_user_experience'
wp option delete 'freshrank_fix_search_optimization'
wp option delete 'freshrank_fix_ai_visibility'
wp option delete 'freshrank_fix_opportunities'
wp option delete 'freshrank_prioritization_enabled'
wp option delete 'freshrank_gsc_authenticated'
wp option delete 'freshrank_display_order_migration_done'
wp option delete 'freshrank_draft_status_migration_done'
wp option delete 'freshrank_token_tracking_migration_done'
wp option delete 'freshrank_dismissed_items_migration_done'
wp option delete 'freshrank_performance_indexes_v2_0_1_done'
wp option delete 'freshrank_openrouter_custom_model_writing'
wp option delete 'freshrank_openrouter_model_writing'
wp option delete 'freshrank_content_model'
wp option delete 'freshrank_last_prioritization_run'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_freshrank_analyzing_%' OR option_name LIKE '_site_transient_freshrank_analyzing_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_freshrank_creating_draft_%' OR option_name LIKE '_site_transient_freshrank_creating_draft_%'"
wp transient delete 'freshrank_filter_authors'
wp transient delete 'freshrank_token_stats'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'freshrank_analysis_view_preference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'freshrank_analysis_view_preference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'freshrank_analysis_view_preference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'freshrank_analysis_view_preference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_original_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_original_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_original_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_original_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_draft_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_draft_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_draft_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_draft_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_last_ai_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_last_ai_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_last_ai_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_last_ai_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_update_approved_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_update_approved_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_update_approved_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_update_approved_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_content_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_content_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_content_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_content_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'freshrank_dismiss_api_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'freshrank_dismiss_api_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'freshrank_dismiss_api_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'freshrank_dismiss_api_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_titles_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_titles_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_titles_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_titles_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_demo_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_demo_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_demo_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_demo_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_changes_made'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_changes_made'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_changes_made'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_changes_made'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_update_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_update_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_update_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_update_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_ai_revision_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_ai_revision_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_ai_revision_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_ai_revision_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_update_severity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_update_severity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_update_severity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_update_severity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_severity_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_severity_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_severity_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_severity_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_seo_improvements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_seo_improvements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_seo_improvements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_seo_improvements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_content_updates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_content_updates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_content_updates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_content_updates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_token_usage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_token_usage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_token_usage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_token_usage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_is_draft'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_is_draft'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_is_draft'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_is_draft'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_created_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_created_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_created_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_created_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_last_updated_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_last_updated_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_last_updated_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_last_updated_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_freshrank_content_backup_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_freshrank_content_backup_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_freshrank_content_backup_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_freshrank_content_backup_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_update_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_update_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_update_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_update_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_internal_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_internal_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_internal_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_internal_links'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_addressed_issues'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_addressed_issues'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_addressed_issues'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_addressed_issues'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_analysis_driven'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_analysis_driven'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_analysis_driven'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_analysis_driven'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_has_revision_draft'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_has_revision_draft'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_has_revision_draft'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_has_revision_draft'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_original_content_backup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_original_content_backup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_original_content_backup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_original_content_backup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_original_title_backup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_original_title_backup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_original_title_backup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_original_title_backup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_freshrank_original_excerpt_backup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_freshrank_original_excerpt_backup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_freshrank_original_excerpt_backup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_freshrank_original_excerpt_backup'"
