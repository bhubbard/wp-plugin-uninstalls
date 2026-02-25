-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lumenare_search_settings', 'lumenare_search_db_version', 'lumenare_search_last_indexed', 'lumenare_search_stop_words_hash', 'lumenare_search_last_post_types', 'lumenare_reindex_batch');

