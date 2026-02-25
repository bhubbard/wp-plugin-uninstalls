-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_all_ctaw', '_is_front_ctaw', '_is_page_ctaw', '_is_home_ctaw', '_is_single_ctaw', '_is_archive_ctaw', '_is_author_ctaw', '_is_404_ctaw', '_is_search_ctaw', 'ctaw_impressions', 'ctaw_clicks');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_all_ctaw', '_is_front_ctaw', '_is_page_ctaw', '_is_home_ctaw', '_is_single_ctaw', '_is_archive_ctaw', '_is_author_ctaw', '_is_404_ctaw', '_is_search_ctaw', 'ctaw_impressions', 'ctaw_clicks');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_all_ctaw', '_is_front_ctaw', '_is_page_ctaw', '_is_home_ctaw', '_is_single_ctaw', '_is_archive_ctaw', '_is_author_ctaw', '_is_404_ctaw', '_is_search_ctaw', 'ctaw_impressions', 'ctaw_clicks');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_all_ctaw', '_is_front_ctaw', '_is_page_ctaw', '_is_home_ctaw', '_is_single_ctaw', '_is_archive_ctaw', '_is_author_ctaw', '_is_404_ctaw', '_is_search_ctaw', 'ctaw_impressions', 'ctaw_clicks');

