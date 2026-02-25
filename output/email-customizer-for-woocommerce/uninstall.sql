-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thwecmf_since', 'woocommerce_email_background_color', 'woocommerce_email_body_background_color', 'woocommerce_email_base_color', 'woocommerce_email_text_color', 'woocommerce_registration_generate_password', 'active_sitewide_plugins', 'thwecmf_misc_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thwecmf_reviewed', 'thwecmf_review_dismissed', 'thwecmf_review_dismissed_time', 'thwecmf_review_skipped', 'thwecmf_review_skipped_time', 'thwecmf_reviewed_time', 'thwecmf_deactivation_snooze');
DELETE FROM wp_usermeta WHERE meta_key IN ('thwecmf_reviewed', 'thwecmf_review_dismissed', 'thwecmf_review_dismissed_time', 'thwecmf_review_skipped', 'thwecmf_review_skipped_time', 'thwecmf_reviewed_time', 'thwecmf_deactivation_snooze');
DELETE FROM wp_termmeta WHERE meta_key IN ('thwecmf_reviewed', 'thwecmf_review_dismissed', 'thwecmf_review_dismissed_time', 'thwecmf_review_skipped', 'thwecmf_review_skipped_time', 'thwecmf_reviewed_time', 'thwecmf_deactivation_snooze');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thwecmf_reviewed', 'thwecmf_review_dismissed', 'thwecmf_review_dismissed_time', 'thwecmf_review_skipped', 'thwecmf_review_skipped_time', 'thwecmf_reviewed_time', 'thwecmf_deactivation_snooze');

