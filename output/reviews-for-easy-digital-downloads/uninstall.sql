-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating', 'verified', '_rating_counts', '_average_rating', '_review_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating', 'verified', '_rating_counts', '_average_rating', '_review_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating', 'verified', '_rating_counts', '_average_rating', '_review_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating', 'verified', '_rating_counts', '_average_rating', '_review_count');

