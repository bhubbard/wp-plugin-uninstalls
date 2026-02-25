-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fgs2wp_options', 'fgs2wp_last_spip_article_id', 'fgs2wp_last_spip_news_id', 'fgs2wp_last_news_category_id', 'fgs2wp_save_posts', 'fgs2wp_save_terms', 'fgs2wp_save_term_relationships', 'fgs2wp_stop_import', 'wc_count_comments');
DELETE FROM wp_options WHERE option_name LIKE '%_children';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fgs2wp_old_article_id', '_fgs2wp_old_news_id', 'lien_titre', 'lien_url', '_fgs2wp_old_file', '_wp_attachment_image_alt', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fgs2wp_old_article_id', '_fgs2wp_old_news_id', 'lien_titre', 'lien_url', '_fgs2wp_old_file', '_wp_attachment_image_alt', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fgs2wp_old_article_id', '_fgs2wp_old_news_id', 'lien_titre', 'lien_url', '_fgs2wp_old_file', '_wp_attachment_image_alt', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fgs2wp_old_article_id', '_fgs2wp_old_news_id', 'lien_titre', 'lien_url', '_fgs2wp_old_file', '_wp_attachment_image_alt', '_thumbnail_id');

