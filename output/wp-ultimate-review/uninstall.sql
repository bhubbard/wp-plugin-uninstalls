-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xs_review_display', 'xs_review_global', 'active_sitewide_plugins', 'WUR_REVIEW_VERSION', 'gutenkit_do_activation_redirect', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('xs_main_post_id', 'xs_reviwer_email', 'xs_reviews_ip', 'xs_review_overview_settings', 'xs_public_review_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('xs_main_post_id', 'xs_reviwer_email', 'xs_reviews_ip', 'xs_review_overview_settings', 'xs_public_review_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('xs_main_post_id', 'xs_reviwer_email', 'xs_reviews_ip', 'xs_review_overview_settings', 'xs_public_review_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('xs_main_post_id', 'xs_reviwer_email', 'xs_reviews_ip', 'xs_review_overview_settings', 'xs_public_review_data');

