-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sharethis_property_id', 'sharethis_first_product', 'sharethisreviews_review_section_approval', 'sharethisreview_posts', 'sharethisreviews_rating_section_symbols', 'sharethisreviews_impression_section_symbols', 'sharethisreviews_impression_section_negative', 'sharethisreviews_rating_section_posttype', 'sharethisreviews_review_section_ctacopy', 'sharethisreviews_review_section_ctacolor');
DELETE FROM wp_options WHERE option_name LIKE '%_posttype';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sharethisreview_review', 'sharethisreview_rating', 'sharethis-hide-review-section', 'sharethisreview_impression');
DELETE FROM wp_usermeta WHERE meta_key IN ('sharethisreview_review', 'sharethisreview_rating', 'sharethis-hide-review-section', 'sharethisreview_impression');
DELETE FROM wp_termmeta WHERE meta_key IN ('sharethisreview_review', 'sharethisreview_rating', 'sharethis-hide-review-section', 'sharethisreview_impression');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sharethisreview_review', 'sharethisreview_rating', 'sharethis-hide-review-section', 'sharethisreview_impression');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'sharethisreview_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'sharethisreview_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'sharethisreview_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sharethisreview_%';

