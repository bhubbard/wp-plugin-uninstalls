-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpar_options', 'widget_recent_entries');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ta_post_review_rating', 'ta_post_review_name', 'ta_post_review_url', 'ta_post_review_type', 'ta_post_review_author', 'ta_post_review_version', 'ta_post_review_price', 'ta_post_review_summary', 'thesis_post_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('ta_post_review_rating', 'ta_post_review_name', 'ta_post_review_url', 'ta_post_review_type', 'ta_post_review_author', 'ta_post_review_version', 'ta_post_review_price', 'ta_post_review_summary', 'thesis_post_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('ta_post_review_rating', 'ta_post_review_name', 'ta_post_review_url', 'ta_post_review_type', 'ta_post_review_author', 'ta_post_review_version', 'ta_post_review_price', 'ta_post_review_summary', 'thesis_post_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ta_post_review_rating', 'ta_post_review_name', 'ta_post_review_url', 'ta_post_review_type', 'ta_post_review_author', 'ta_post_review_version', 'ta_post_review_price', 'ta_post_review_summary', 'thesis_post_image');

