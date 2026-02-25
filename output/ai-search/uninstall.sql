-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_search_woocommerce_fields', 'ai_search_provider', 'ai_search_service_token', 'ai_search_show_setup_wizard', 'ai_search_setup_completed', 'ai_search_api_key', 'ai_search_similarity_threshold', 'ai_search_searchable_post_types', 'ai_search_badge_public', 'ai_search_openai_model', 'ai_search_hybrid_enabled', 'ai_search_hybrid_balance', 'ai_search_highlight_enabled', 'ai_search_processed_titles', 'ai_search_validation_data', 'ai_search_validation_error', 'ai_search_quota_error', 'ai_search_quota_api_error', 'ai_search_used_fallback', 'ai_search_no_results', 'ai_search_activation_redirect', 'ai_search_vocabulary');
DELETE FROM wp_options WHERE option_name LIKE 'ai_search_custom_fields_%';
DELETE FROM wp_options WHERE option_name LIKE 'ai_search_embedding_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ai_search_embedding');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ai_search_embedding');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ai_search_embedding');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ai_search_embedding');

