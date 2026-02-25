-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'example_ignore_notice3');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'example_ignore_notice3');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'example_ignore_notice3');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'example_ignore_notice3');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%hide_mark_complete_button';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%hide_mark_complete_button';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%hide_mark_complete_button';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%hide_mark_complete_button';

