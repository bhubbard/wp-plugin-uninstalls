-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_case27_listing_type', '_case27_review_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('_case27_listing_type', '_case27_review_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('_case27_listing_type', '_case27_review_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_case27_listing_type', '_case27_review_count');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

