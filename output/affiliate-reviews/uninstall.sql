-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('affreviews_general_settings', 'affreviews_visual_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('affreviews_rating', 'affreviews_logo_background_color', 'affreviews_positives', 'affreviews_negatives', 'affreviews_group_info_list', 'affreviews_bonus', 'affreviews_review_link', 'affreviews_tag_text', 'affreviews_tag_background_color', 'affreviews_afflink', 'affreviews_terms', 'affreviews_description', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('affreviews_rating', 'affreviews_logo_background_color', 'affreviews_positives', 'affreviews_negatives', 'affreviews_group_info_list', 'affreviews_bonus', 'affreviews_review_link', 'affreviews_tag_text', 'affreviews_tag_background_color', 'affreviews_afflink', 'affreviews_terms', 'affreviews_description', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('affreviews_rating', 'affreviews_logo_background_color', 'affreviews_positives', 'affreviews_negatives', 'affreviews_group_info_list', 'affreviews_bonus', 'affreviews_review_link', 'affreviews_tag_text', 'affreviews_tag_background_color', 'affreviews_afflink', 'affreviews_terms', 'affreviews_description', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('affreviews_rating', 'affreviews_logo_background_color', 'affreviews_positives', 'affreviews_negatives', 'affreviews_group_info_list', 'affreviews_bonus', 'affreviews_review_link', 'affreviews_tag_text', 'affreviews_tag_background_color', 'affreviews_afflink', 'affreviews_terms', 'affreviews_description', '_wp_page_template');

