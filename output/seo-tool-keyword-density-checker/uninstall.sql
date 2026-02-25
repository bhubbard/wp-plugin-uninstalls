-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('keyword_density_checker_configuration', 'kdc_version', 'kdc_default_language', 'kdc_filter_stopwords', 'kdc_max_list_items', 'kdc_automatic_update', 'kdc_update_interval', 'kdc_2word_phrases', 'kdc_3word_phrases', 'kdc_meta_keywords_count', 'kdc_max_keywords_count', 'kdc_keywords_length', 'kdc_authors_can_change_content_language', 'kdc_authors_can_disable_stopword_filter', 'kdc_max_keywords_length');
DELETE FROM wp_options WHERE option_name LIKE 'kdc_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kdc_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('kdc_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('kdc_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kdc_metadata');

