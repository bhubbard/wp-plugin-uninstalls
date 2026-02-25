-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thwmscf_since', 'THWMSC_SETTINGS', 'woocommerce_enable_checkout_login_reminder', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thwmscf_deactivation_snooze', 'thwmsc_review_skipped', 'thwmsc_review_skipped_time', 'thwmsc_review_dismissed', 'thwmsc_review_dismissed_time', 'thwmsc_reviewed', 'thwmsc_reviewed_time', 'thwmscf_discount_popup');
DELETE FROM wp_usermeta WHERE meta_key IN ('thwmscf_deactivation_snooze', 'thwmsc_review_skipped', 'thwmsc_review_skipped_time', 'thwmsc_review_dismissed', 'thwmsc_review_dismissed_time', 'thwmsc_reviewed', 'thwmsc_reviewed_time', 'thwmscf_discount_popup');
DELETE FROM wp_termmeta WHERE meta_key IN ('thwmscf_deactivation_snooze', 'thwmsc_review_skipped', 'thwmsc_review_skipped_time', 'thwmsc_review_dismissed', 'thwmsc_review_dismissed_time', 'thwmsc_reviewed', 'thwmsc_reviewed_time', 'thwmscf_discount_popup');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thwmscf_deactivation_snooze', 'thwmsc_review_skipped', 'thwmsc_review_skipped_time', 'thwmsc_review_dismissed', 'thwmsc_review_dismissed_time', 'thwmsc_reviewed', 'thwmsc_reviewed_time', 'thwmscf_discount_popup');

