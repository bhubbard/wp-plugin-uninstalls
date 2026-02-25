-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('split_posts_by', 'activate_post_toggle', 'activate_page_toggle', 'split_pages_by');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('easyread_plugin_post_count', 'easyread_disable_option');
DELETE FROM wp_usermeta WHERE meta_key IN ('easyread_plugin_post_count', 'easyread_disable_option');
DELETE FROM wp_termmeta WHERE meta_key IN ('easyread_plugin_post_count', 'easyread_disable_option');
DELETE FROM wp_commentmeta WHERE meta_key IN ('easyread_plugin_post_count', 'easyread_disable_option');

