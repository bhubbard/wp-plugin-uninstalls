-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thwvsf_since', 'active_sitewide_plugins', 'thwvsf_skip_review_request_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('th_custom_attribute_settings', '_wc_attachment_source', 'thwvsf_review_skipped', 'thwvsf_review_skipped_time', 'thwvsf_review_dismissed', 'thwvsf_review_dismissed_time', 'thwvsf_reviewed', 'thwvsf_deactivation_snooze', 'thwvsf_discount_popup', 'label');
DELETE FROM wp_usermeta WHERE meta_key IN ('th_custom_attribute_settings', '_wc_attachment_source', 'thwvsf_review_skipped', 'thwvsf_review_skipped_time', 'thwvsf_review_dismissed', 'thwvsf_review_dismissed_time', 'thwvsf_reviewed', 'thwvsf_deactivation_snooze', 'thwvsf_discount_popup', 'label');
DELETE FROM wp_termmeta WHERE meta_key IN ('th_custom_attribute_settings', '_wc_attachment_source', 'thwvsf_review_skipped', 'thwvsf_review_skipped_time', 'thwvsf_review_dismissed', 'thwvsf_review_dismissed_time', 'thwvsf_reviewed', 'thwvsf_deactivation_snooze', 'thwvsf_discount_popup', 'label');
DELETE FROM wp_commentmeta WHERE meta_key IN ('th_custom_attribute_settings', '_wc_attachment_source', 'thwvsf_review_skipped', 'thwvsf_review_skipped_time', 'thwvsf_review_dismissed', 'thwvsf_review_dismissed_time', 'thwvsf_reviewed', 'thwvsf_deactivation_snooze', 'thwvsf_discount_popup', 'label');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'product_pa_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'product_pa_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'product_pa_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'product_pa_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'product_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'product_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'product_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'product_%';

