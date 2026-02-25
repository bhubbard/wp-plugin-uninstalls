-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_qq_possible_answers', '_qq_enable_show_btn', '_qq_good_answers');
DELETE FROM wp_usermeta WHERE meta_key IN ('_qq_possible_answers', '_qq_enable_show_btn', '_qq_good_answers');
DELETE FROM wp_termmeta WHERE meta_key IN ('_qq_possible_answers', '_qq_enable_show_btn', '_qq_good_answers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_qq_possible_answers', '_qq_enable_show_btn', '_qq_good_answers');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_qq_content_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_qq_content_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_qq_content_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qq_content_%';

