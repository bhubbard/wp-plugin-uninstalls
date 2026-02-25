-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('karma_by_kadar__song_id', 'karma_by_kadar__rating');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('karma_by_kadar__rating_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('karma_by_kadar__rating_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('karma_by_kadar__rating_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('karma_by_kadar__rating_dismissed');

