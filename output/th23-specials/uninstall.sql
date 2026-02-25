-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('th23_shared');
DELETE FROM wp_options WHERE option_name LIKE '%_update_cache';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('th23_title_marked');
DELETE FROM wp_usermeta WHERE meta_key IN ('th23_title_marked');
DELETE FROM wp_termmeta WHERE meta_key IN ('th23_title_marked');
DELETE FROM wp_commentmeta WHERE meta_key IN ('th23_title_marked');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'th23_admin_screen_options-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'th23_admin_screen_options-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'th23_admin_screen_options-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'th23_admin_screen_options-%';

