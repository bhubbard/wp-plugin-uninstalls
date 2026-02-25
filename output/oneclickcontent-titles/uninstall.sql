-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('occ_titles_post_types', 'occ_titles_ai_provider', 'occ_titles_openai_api_key', 'occ_titles_google_api_key', 'occ_titles_google_model', 'occ_titles_openai_model', 'occ_titles_assistant_id');

