-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vk_filter_search');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vkfs_search_result_page_id', 'vkfs_display_result', 'vkfs_display_archive');
DELETE FROM wp_usermeta WHERE meta_key IN ('vkfs_search_result_page_id', 'vkfs_display_result', 'vkfs_display_archive');
DELETE FROM wp_termmeta WHERE meta_key IN ('vkfs_search_result_page_id', 'vkfs_display_result', 'vkfs_display_archive');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vkfs_search_result_page_id', 'vkfs_display_result', 'vkfs_display_archive');

