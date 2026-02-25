-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hw_theme_switcher_theme_id', 'hw_theme_switcher_post_types', 'hw_theme_switcher_post_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('hw_theme_switcher_theme_id', 'hw_theme_switcher_post_types', 'hw_theme_switcher_post_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('hw_theme_switcher_theme_id', 'hw_theme_switcher_post_types', 'hw_theme_switcher_post_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hw_theme_switcher_theme_id', 'hw_theme_switcher_post_types', 'hw_theme_switcher_post_ids');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_post_types';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_post_types';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_post_types';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_post_types';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_post_ids';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_post_ids';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_post_ids';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_post_ids';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_posts';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_posts';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_posts';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_posts';

