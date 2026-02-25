-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpdiscuz_form_content_type_rel', 'wpdiscuz_form_post_rel', 'anr_admin_options', 'ic-wordpress-settings', 'wpdiscuz_recaptcha', 'wc_options', 'woocommerce_review_rating_verification_required', 'wc_plugin_version', 'wpdiscuz-addon-note-dismissed', 'wpdiscuz-tip-note-dismissed', 'wpd_checked_data', 'wpd_admin_notices', 'disallowed_keys', 'rewrite_rules', 'fastvelocity_min_ignore', 'wpdiscuz_addons_check');
DELETE FROM wp_options WHERE option_name LIKE '%_redpoint';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_review_count', 'rating', '_wc_rating_count', '_wc_average_rating', 'wpdiscuz_form_general_options', '_wp_attachment_image_alt', '_wp_attached_file', '_wmu_comment_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_review_count', 'rating', '_wc_rating_count', '_wc_average_rating', 'wpdiscuz_form_general_options', '_wp_attachment_image_alt', '_wp_attached_file', '_wmu_comment_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_review_count', 'rating', '_wc_rating_count', '_wc_average_rating', 'wpdiscuz_form_general_options', '_wp_attachment_image_alt', '_wp_attached_file', '_wmu_comment_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_review_count', 'rating', '_wc_rating_count', '_wc_average_rating', 'wpdiscuz_form_general_options', '_wp_attachment_image_alt', '_wp_attached_file', '_wmu_comment_id');

