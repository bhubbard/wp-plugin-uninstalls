-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('morphii-settings', 'morphii-licence', 'woocommerce_review_rating_verification_required');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('morphiis', 'morphii-question-id', 'morphii-current-post_id', 'morphii-current-post_type', 'morphii-current-post_name', '_morphii_final_review', '_morphii_reviewer_user_name', '_morphii_reviewer_user_email', 'morphii_post_types_to_display', 'morphiis_label');
DELETE FROM wp_usermeta WHERE meta_key IN ('morphiis', 'morphii-question-id', 'morphii-current-post_id', 'morphii-current-post_type', 'morphii-current-post_name', '_morphii_final_review', '_morphii_reviewer_user_name', '_morphii_reviewer_user_email', 'morphii_post_types_to_display', 'morphiis_label');
DELETE FROM wp_termmeta WHERE meta_key IN ('morphiis', 'morphii-question-id', 'morphii-current-post_id', 'morphii-current-post_type', 'morphii-current-post_name', '_morphii_final_review', '_morphii_reviewer_user_name', '_morphii_reviewer_user_email', 'morphii_post_types_to_display', 'morphiis_label');
DELETE FROM wp_commentmeta WHERE meta_key IN ('morphiis', 'morphii-question-id', 'morphii-current-post_id', 'morphii-current-post_type', 'morphii-current-post_name', '_morphii_final_review', '_morphii_reviewer_user_name', '_morphii_reviewer_user_email', 'morphii_post_types_to_display', 'morphiis_label');

