-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_post_edit_rows');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%dots';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%dots';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%dots';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%dots';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%arrows';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%arrows';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%arrows';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%arrows';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%loop';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%loop';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%loop';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%loop';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%autoplay';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%autoplay';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%autoplay';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%autoplay';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%effect';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%effect';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%effect';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%effect';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%duration';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%duration';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%duration';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%duration';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%transition';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%transition';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%transition';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%transition';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%mobile';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%mobile';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%mobile';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%mobile';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%desktop';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%desktop';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%desktop';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%desktop';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%overlay';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%overlay';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%overlay';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%overlay';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%text';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%text';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%text';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%text';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%slides';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%slides';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%slides';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%slides';

