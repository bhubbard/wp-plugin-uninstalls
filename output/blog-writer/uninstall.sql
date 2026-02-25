-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lp_average_rating', '_lp_count_rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lp_average_rating', '_lp_count_rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lp_average_rating', '_lp_count_rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lp_average_rating', '_lp_count_rating');

