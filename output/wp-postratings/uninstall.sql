-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('postratings_image', 'postratings_max', 'postratings_template_vote', 'postratings_template_text', 'postratings_template_none', 'postratings_logging_method', 'postratings_allowtorate', 'postratings_ratingstext', 'postratings_template_highestrated', 'postratings_ajax_style', 'postratings_ratingsvalue', 'postratings_customrating', 'postratings_template_permission', 'postratings_template_mostrated', 'widget_ratings_highest_rated', 'widget_ratings_most_rated', 'postratings_options', 'stats_display', 'stats_mostlimit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ratings_users', 'ratings_score', 'ratings_average');
DELETE FROM wp_usermeta WHERE meta_key IN ('ratings_users', 'ratings_score', 'ratings_average');
DELETE FROM wp_termmeta WHERE meta_key IN ('ratings_users', 'ratings_score', 'ratings_average');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ratings_users', 'ratings_score', 'ratings_average');

