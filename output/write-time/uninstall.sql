-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('create_time', 'created_total_time', 'start_edit_time', 'first_created_endtime', 'total_article_time', 'total_edit_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('create_time', 'created_total_time', 'start_edit_time', 'first_created_endtime', 'total_article_time', 'total_edit_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('create_time', 'created_total_time', 'start_edit_time', 'first_created_endtime', 'total_article_time', 'total_edit_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('create_time', 'created_total_time', 'start_edit_time', 'first_created_endtime', 'total_article_time', 'total_edit_time');

