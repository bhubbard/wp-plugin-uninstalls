-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('headspace_options', 'headspace_version', 'headspace_global', 'headspace_attachment', 'headspace_page', 'headspace_post', 'headspace_404', 'headspace_category', 'headspace_author', 'headspace_home', 'headspace_front', 'headspace_search', 'headspace_tags', 'headspace_taxonomy', 'headspace_archive', 'headspace_login', 'headspace2', 'headspace_keywords', 'headspace_dictionary', 'headspace_page_plugins', 'headspace_page_themes');
DELETE FROM wp_options WHERE option_name LIKE 'headspace_%';
DELETE FROM wp_options WHERE option_name LIKE 'headspace_cat_%';
DELETE FROM wp_options WHERE option_name LIKE 'headspace_taxonomy_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_headspace_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_headspace_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_headspace_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_headspace_%';

