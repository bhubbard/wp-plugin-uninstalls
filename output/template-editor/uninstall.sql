-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('te_options');
DELETE FROM wp_options WHERE option_name LIKE '%_purchased';
DELETE FROM wp_options WHERE option_name LIKE '%_donated';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('origin');
DELETE FROM wp_usermeta WHERE meta_key IN ('origin');
DELETE FROM wp_termmeta WHERE meta_key IN ('origin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('origin');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-notice-dismissed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-notice-dismissed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-notice-dismissed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-notice-dismissed';

