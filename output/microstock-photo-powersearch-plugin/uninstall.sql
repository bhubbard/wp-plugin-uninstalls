-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mps_power_search_configuration', 'mps_version', 'mps_default_language', 'mps_filter_stopwords', 'mps_max_list_items', 'mps_automatic_update', 'mps_update_interval', 'mps_2word_phrases', 'mps_3word_phrases', 'mps_meta_keywords_count', 'mps_max_keywords_count', 'mps_keywords_length', 'mps_authors_can_change_content_language', 'mps_authors_can_disable_stopword_filter', 'mps_max_keywords_length');
DELETE FROM wp_options WHERE option_name LIKE 'mps_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mps_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('mps_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('mps_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mps_metadata');

