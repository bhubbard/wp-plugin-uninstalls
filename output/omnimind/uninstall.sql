-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_omni_ai_custom_answer_prompt', '_omni_ai_custom_search_prompt', '_omni_project_id', '_omni_selected_post_types', '_omni_api_key_status', '_omni_api_key', '_omni_project_name', '_omni_ai_search_answer', '_omni_ai_search_content', '_omni_ai_search_cache', '_omni_ai_search_autocomplete', '_omni_ai_search_results_limit', '_omni_ai_search_trust_level', '_omni_ai_cache', '_omni_selected_fields_option', '_omni_uploaded_fields_option', '_omni_last_sync_date', '_omni_chains_cache', '_omni_chain_id');
DELETE FROM wp_options WHERE option_name LIKE '_omni_post_count_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_exclude_from_omni');
DELETE FROM wp_usermeta WHERE meta_key IN ('_exclude_from_omni');
DELETE FROM wp_termmeta WHERE meta_key IN ('_exclude_from_omni');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_exclude_from_omni');

