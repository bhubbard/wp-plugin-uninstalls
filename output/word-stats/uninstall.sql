-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('word_stats_options', 'word_stats_state');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('word_stats_cached', 'readability_ARI', 'readability_CLI', 'readability_LIX', 'word_stats_word_count', 'word_stats_keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('word_stats_cached', 'readability_ARI', 'readability_CLI', 'readability_LIX', 'word_stats_word_count', 'word_stats_keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('word_stats_cached', 'readability_ARI', 'readability_CLI', 'readability_LIX', 'word_stats_word_count', 'word_stats_keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('word_stats_cached', 'readability_ARI', 'readability_CLI', 'readability_LIX', 'word_stats_word_count', 'word_stats_keywords');

