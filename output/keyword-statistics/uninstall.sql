-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('keyword_statistics_configuration', 'ks_version', 'ks_testmode', 'ks_default_language', 'ks_set_language_meta', 'ks_filter_stopwords', 'ks_max_list_items', 'ks_automatic_update', 'ks_update_interval', 'ks_2word_phrases', 'ks_3word_phrases', 'ks_meta_keywords_count', 'ks_max_keywords_count', 'ks_keywords_length', 'ks_index_aggregated', 'ks_follow_aggregated', 'ks_noodp', 'ks_noydir', 'ks_noarchive', 'ks_dont_serve_metadata', 'ks_serve_title', 'ks_serve_meta_robots', 'ks_serve_meta_keywords', 'ks_serve_meta_description', 'ks_serve_meta_canonical', 'ks_words_from_posts_in_aggregated_description', 'ks_max_title_length', 'ks_min_description_length', 'ks_max_description_length', 'ks_automatic_meta_data_update', 'ks_min_words', 'ks_hide_fields_authors_cant_change', 'ks_hide_fields_authors_cant_change_from_admin', 'ks_authors_can_change_content_language', 'ks_authors_can_disable_stopword_filter', 'ks_authors_can_set_individual_title', 'ks_authors_can_edit_keywords', 'ks_authors_can_edit_description', 'ks_authors_can_control_robots', 'ks_home_first', 'ks_category_first', 'ks_tag_first', 'ks_archive_first', 'ks_author_first', 'ks_search_first', 'ks_home_index', 'ks_category_index', 'ks_tag_index', 'ks_archive_index', 'ks_author_index');
DELETE FROM wp_options WHERE option_name IN ('ks_search_index', 'ks_home_follow', 'ks_category_follow', 'ks_tag_follow', 'ks_archive_follow', 'ks_author_follow', 'ks_search_follow', 'ks_feeds_noindex', 'ks_max_keywords_length');
DELETE FROM wp_options WHERE option_name LIKE 'ks_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ks_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('ks_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('ks_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ks_metadata');

