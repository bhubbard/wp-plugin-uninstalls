-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ihafs_diagnostic_data_agreed', 'ihafs_diagnostic_data_notice', 'ihafs_rating_already_rated', 'ihafs_installed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_ihafs_condition', '_ihafs_status', '_ihafs_code', '_ihafs_show_on', '_ihafs_pages_list', '_ihafs_posts_list', '_ihafs_categories_list', '_ihafs_tags_list');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_ihafs_condition', '_ihafs_status', '_ihafs_code', '_ihafs_show_on', '_ihafs_pages_list', '_ihafs_posts_list', '_ihafs_categories_list', '_ihafs_tags_list');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_ihafs_condition', '_ihafs_status', '_ihafs_code', '_ihafs_show_on', '_ihafs_pages_list', '_ihafs_posts_list', '_ihafs_categories_list', '_ihafs_tags_list');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_ihafs_condition', '_ihafs_status', '_ihafs_code', '_ihafs_show_on', '_ihafs_pages_list', '_ihafs_posts_list', '_ihafs_categories_list', '_ihafs_tags_list');

