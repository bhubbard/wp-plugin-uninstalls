-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_groupblog_blog_defaults_options', 'bp_groupblog_blog_defaults_setup', 'p2_rewrites_flushed', 'prologue_show_titles', 'p2_background_color', 'p2_background_image', 'p2_hide_sidebar', 'p2_allow_users_publish', 'p2_hide_threads', 'p2_prompt_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'created_by_groupblog_dont_change');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'created_by_groupblog_dont_change');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'created_by_groupblog_dont_change');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'created_by_groupblog_dont_change');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities';

