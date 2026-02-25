-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmtpages', 'wpmt_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname', 'display_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'nickname', 'display_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname', 'display_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname', 'display_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%address';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%address';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%address';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%address';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%dobdate';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%dobdate';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%dobdate';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%dobdate';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%mobilenumber';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%mobilenumber';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%mobilenumber';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%mobilenumber';

