-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yayrev_onboarding_complete', 'yayrev_has_reviewed', 'yayrev_my_account_endpoint_flushed', 'yayrev_settings', 'yayrev_db_version', 'woocommerce_enable_reviews', 'woocommerce_review_rating_verification_required', 'woocommerce_review_rating_verification_label', 'woocommerce_enable_review_rating', 'woocommerce_review_rating_required', 'woocommerce_email_from_address', 'yayrev_unsubscribed_emails', 'woocommerce_email_base_color', 'yayrev_license_key', 'yayrev_pinned_migrated', 'yayrev_wizard_completed', 'update_plugins', 'yayrev_activated', 'yayrev_migrated_notice');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE '%_license_info';
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';
DELETE FROM wp_options WHERE option_name LIKE '%_version_info';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yayrev_video_poster', 'verified', '_yayrev_title', '_yayrev_rating_type', 'rating', 'comment_post_ID', '_yayrev_imported', '_yayrev_import_source', '_yayrev_import_job', '_yayrev_import_source_id', '_thumbnail_id', 'review_title', '_yoast_wpseo_primary_product_cat', 'rank_math_primary_product_cat', '_aioseo_primary_term_product_cat');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yayrev_video_poster', 'verified', '_yayrev_title', '_yayrev_rating_type', 'rating', 'comment_post_ID', '_yayrev_imported', '_yayrev_import_source', '_yayrev_import_job', '_yayrev_import_source_id', '_thumbnail_id', 'review_title', '_yoast_wpseo_primary_product_cat', 'rank_math_primary_product_cat', '_aioseo_primary_term_product_cat');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yayrev_video_poster', 'verified', '_yayrev_title', '_yayrev_rating_type', 'rating', 'comment_post_ID', '_yayrev_imported', '_yayrev_import_source', '_yayrev_import_job', '_yayrev_import_source_id', '_thumbnail_id', 'review_title', '_yoast_wpseo_primary_product_cat', 'rank_math_primary_product_cat', '_aioseo_primary_term_product_cat');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yayrev_video_poster', 'verified', '_yayrev_title', '_yayrev_rating_type', 'rating', 'comment_post_ID', '_yayrev_imported', '_yayrev_import_source', '_yayrev_import_job', '_yayrev_import_source_id', '_thumbnail_id', 'review_title', '_yoast_wpseo_primary_product_cat', 'rank_math_primary_product_cat', '_aioseo_primary_term_product_cat');

