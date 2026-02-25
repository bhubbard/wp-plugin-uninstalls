-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fgj2wp_options', 'fgj2wp_last_article_id', 'fgj2wp_last_category_id', 'fgj2wp_last_section_id', 'fgj2wp_save_posts', 'fgj2wp_save_terms', 'fgj2wp_save_term_relationships', 'fgj2wp_stop_import', 'fgj2wp_ftp_options', 'fgj2wp_last_link_id', 'wc_count_comments');
DELETE FROM wp_options WHERE option_name LIKE '%_children';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fgj2wp_old_id', '_fgj2wp_old_tag_id', '_fgj2wp_old_file', '_wp_attachment_image_alt', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fgj2wp_old_id', '_fgj2wp_old_tag_id', '_fgj2wp_old_file', '_wp_attachment_image_alt', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fgj2wp_old_id', '_fgj2wp_old_tag_id', '_fgj2wp_old_file', '_wp_attachment_image_alt', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fgj2wp_old_id', '_fgj2wp_old_tag_id', '_fgj2wp_old_file', '_wp_attachment_image_alt', '_thumbnail_id');

