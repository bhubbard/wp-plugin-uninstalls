-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('postratings_max');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('VideoSource', 'VideoID', 'VideoDuration', 'VideoLikes', 'VideoDislikes', 'VideoFavorites', 'views', 'ratings_users', 'ratings_score', 'ratings_average');
DELETE FROM wp_usermeta WHERE meta_key IN ('VideoSource', 'VideoID', 'VideoDuration', 'VideoLikes', 'VideoDislikes', 'VideoFavorites', 'views', 'ratings_users', 'ratings_score', 'ratings_average');
DELETE FROM wp_termmeta WHERE meta_key IN ('VideoSource', 'VideoID', 'VideoDuration', 'VideoLikes', 'VideoDislikes', 'VideoFavorites', 'views', 'ratings_users', 'ratings_score', 'ratings_average');
DELETE FROM wp_commentmeta WHERE meta_key IN ('VideoSource', 'VideoID', 'VideoDuration', 'VideoLikes', 'VideoDislikes', 'VideoFavorites', 'views', 'ratings_users', 'ratings_score', 'ratings_average');

