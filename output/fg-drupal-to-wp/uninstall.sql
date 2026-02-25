-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fgd2wp_options', 'fgd2wp_last_node_article_id', 'fgd2wp_last_node_story_id', 'fgd2wp_last_node_post_id', 'fgd2wp_last_node_page_id', 'fgd2wp_last_taxonomy_categories_id', 'fgd2wp_last_taxonomy_tags_id', 'fgd2wp_save_posts', 'fgd2wp_save_terms', 'fgd2wp_save_term_relationships', 'fgd2wp_stop_import', 'fgd2wp_ftp_options', 'wc_count_comments');
DELETE FROM wp_options WHERE option_name LIKE '%_children';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fgd2wp_old_file', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fgd2wp_old_file', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fgd2wp_old_file', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fgd2wp_old_file', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';

