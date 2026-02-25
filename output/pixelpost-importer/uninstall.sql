-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pp_cats2wp_cats', 'postratings_max');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', 'ratings_score', 'ratings_users', 'ratings_average');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', 'ratings_score', 'ratings_users', 'ratings_average');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', 'ratings_score', 'ratings_users', 'ratings_average');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', 'ratings_score', 'ratings_users', 'ratings_average');

