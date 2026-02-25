-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('AIEntries_question', 'AIEntries_news_api_key', 'AIEntries_num_calls', 'AIEntries_api_key_stable_diffusion', 'AIEntries_api_key', 'AIEntries_category', 'last_six_hour_execution');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ai_entries_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('ai_entries_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('ai_entries_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ai_entries_post');

