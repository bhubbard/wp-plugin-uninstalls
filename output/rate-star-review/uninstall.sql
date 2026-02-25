-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('VWrateStarReview', 'videowhisper_apf_ajax');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating', 'rating_max', 'rateStarReview_rating', 'rateStarReview_ratingNumber', 'rateStarReview_ratingPoints', 'content_type', 'rateStarReview_votes', 'rateStarReview_voteCount', 'content_id', 'post_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating', 'rating_max', 'rateStarReview_rating', 'rateStarReview_ratingNumber', 'rateStarReview_ratingPoints', 'content_type', 'rateStarReview_votes', 'rateStarReview_voteCount', 'content_id', 'post_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating', 'rating_max', 'rateStarReview_rating', 'rateStarReview_ratingNumber', 'rateStarReview_ratingPoints', 'content_type', 'rateStarReview_votes', 'rateStarReview_voteCount', 'content_id', 'post_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating', 'rating_max', 'rateStarReview_rating', 'rateStarReview_ratingNumber', 'rateStarReview_ratingPoints', 'content_type', 'rateStarReview_votes', 'rateStarReview_voteCount', 'content_id', 'post_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'rateStarReview_rating_category%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'rateStarReview_rating_category%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'rateStarReview_rating_category%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rateStarReview_rating_category%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'rateStarReview_ratingNumber_category%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'rateStarReview_ratingNumber_category%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'rateStarReview_ratingNumber_category%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rateStarReview_ratingNumber_category%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'rateStarReview_ratingPoints_category%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'rateStarReview_ratingPoints_category%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'rateStarReview_ratingPoints_category%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rateStarReview_ratingPoints_category%';

