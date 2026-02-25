-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reviewer_review_archive_page_id', 'active_sitewide_plugins', 'reviewer_archive_image_size', 'reviewer_review_image_size', 'reviewer_max_rating', 'reviewer_rating_step', 'reviewer_extensions_list');
DELETE FROM wp_options WHERE option_name LIKE 'reviewer_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rating', '_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rating', '_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rating', '_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rating', '_attributes');

