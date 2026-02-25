-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ays_advanced_related_posts_upgrade_plugin', 'ays_advanced_related_posts_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%post_meta';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%post_meta';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%post_meta';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%post_meta';

