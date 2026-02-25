-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lp_calculated_rating_average_courses');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lpr_rating', '_lpr_review_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lpr_rating', '_lpr_review_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lpr_rating', '_lpr_review_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lpr_rating', '_lpr_review_title');

