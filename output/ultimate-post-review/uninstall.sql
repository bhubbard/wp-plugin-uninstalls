-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('upr_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_upr_post_review_enabled', '_upr_post_review_title', '_upr_post_review_summary', '_upr_post_review_positives', '_upr_post_review_negatives', '_upr_review_criteria_group');
DELETE FROM wp_usermeta WHERE meta_key IN ('_upr_post_review_enabled', '_upr_post_review_title', '_upr_post_review_summary', '_upr_post_review_positives', '_upr_post_review_negatives', '_upr_review_criteria_group');
DELETE FROM wp_termmeta WHERE meta_key IN ('_upr_post_review_enabled', '_upr_post_review_title', '_upr_post_review_summary', '_upr_post_review_positives', '_upr_post_review_negatives', '_upr_review_criteria_group');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_upr_post_review_enabled', '_upr_post_review_title', '_upr_post_review_summary', '_upr_post_review_positives', '_upr_post_review_negatives', '_upr_review_criteria_group');

