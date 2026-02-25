-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('canalblog_importer_blog_uri', 'canalblog_overwrite_contents', 'canalblog_comments_status', 'canalblog_trackbacks_status', 'canalblog_importer_step', 'canalblog_importer_archives_current_index', 'canalblog_have_finished_archives', 'canalblog_months', 'canalblog_step_offset', 'canalblog_permalinks', 'canalblog_have_finished_categories', 'canalblog_categories', 'canalblog_have_finished_cleanup', 'canalblog_have_finished_posts', 'canalblog_have_finished_tags', 'canalblog_tags', 'canalblog_post_uris');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('canalblog_id', 'canalblog_uri', 'canalblog_attachment_uri');
DELETE FROM wp_usermeta WHERE meta_key IN ('canalblog_id', 'canalblog_uri', 'canalblog_attachment_uri');
DELETE FROM wp_termmeta WHERE meta_key IN ('canalblog_id', 'canalblog_uri', 'canalblog_attachment_uri');
DELETE FROM wp_commentmeta WHERE meta_key IN ('canalblog_id', 'canalblog_uri', 'canalblog_attachment_uri');

