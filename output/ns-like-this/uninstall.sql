-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('my_liked_content_page_title', 'my_liked_content_page_name', 'my_liked_content_page_id', 'my_liked_content_id', 'nslt_dbVersion', 'nslt_jquery', 'nslt_onPage', 'nslt_useEmblems', 'nslt_textOrImage', 'nslt_text', 'most_liked_content', 'latest_liked_content', 'most_visited_liked_content');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_allow_all');
DELETE FROM wp_usermeta WHERE meta_key IN ('_allow_all');
DELETE FROM wp_termmeta WHERE meta_key IN ('_allow_all');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_allow_all');

