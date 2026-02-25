-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mabs', 'mabs_admin_urls', 'mabs_bloglist_network');
DELETE FROM wp_options WHERE option_name LIKE 'mabs_activeblog_%';
DELETE FROM wp_options WHERE option_name LIKE 'mabs_bloglist_%';
DELETE FROM wp_options WHERE option_name LIKE 'mabs_is_below_min_%';
DELETE FROM wp_options WHERE option_name LIKE 'mabs_site_count_%';
DELETE FROM wp_options WHERE option_name LIKE 'mabs_user_blogs_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('primary_blog', 'source_domain');
DELETE FROM wp_usermeta WHERE meta_key IN ('primary_blog', 'source_domain');
DELETE FROM wp_termmeta WHERE meta_key IN ('primary_blog', 'source_domain');
DELETE FROM wp_commentmeta WHERE meta_key IN ('primary_blog', 'source_domain');

