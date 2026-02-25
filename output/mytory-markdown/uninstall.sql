-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('manual_update', 'auto_update_only_writer_visits', 'auto_update_per', 'debug_msg', 'mytory_markdown_engine');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mytory_md_visits_count', 'mytory_md_path', '_mytory_markdown_etag', 'mytory_md_mode', 'mytory_md_text', 'mytory_md_path_old');
DELETE FROM wp_usermeta WHERE meta_key IN ('mytory_md_visits_count', 'mytory_md_path', '_mytory_markdown_etag', 'mytory_md_mode', 'mytory_md_text', 'mytory_md_path_old');
DELETE FROM wp_termmeta WHERE meta_key IN ('mytory_md_visits_count', 'mytory_md_path', '_mytory_markdown_etag', 'mytory_md_mode', 'mytory_md_text', 'mytory_md_path_old');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mytory_md_visits_count', 'mytory_md_path', '_mytory_markdown_etag', 'mytory_md_mode', 'mytory_md_text', 'mytory_md_path_old');

