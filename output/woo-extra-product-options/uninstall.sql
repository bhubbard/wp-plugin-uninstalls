-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thwepof_since', 'thwepof_do_activation_redirect', 'thwepof_custom_product_fields', 'thwepof_custom_product_fields_bkp', 'active_sitewide_plugins', 'removed_section', 'reset_all_fields');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thwepo_review_skipped', 'thwepo_review_skipped_time', 'thwepo_review_dismissed', 'thwepo_review_dismissed_time', 'thwepo_reviewed', 'thwepo_reviewed_time', 'thwepof_discount_popup', 'thwepof_deactivation_snooze');
DELETE FROM wp_usermeta WHERE meta_key IN ('thwepo_review_skipped', 'thwepo_review_skipped_time', 'thwepo_review_dismissed', 'thwepo_review_dismissed_time', 'thwepo_reviewed', 'thwepo_reviewed_time', 'thwepof_discount_popup', 'thwepof_deactivation_snooze');
DELETE FROM wp_termmeta WHERE meta_key IN ('thwepo_review_skipped', 'thwepo_review_skipped_time', 'thwepo_review_dismissed', 'thwepo_review_dismissed_time', 'thwepo_reviewed', 'thwepo_reviewed_time', 'thwepof_discount_popup', 'thwepof_deactivation_snooze');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thwepo_review_skipped', 'thwepo_review_skipped_time', 'thwepo_review_dismissed', 'thwepo_review_dismissed_time', 'thwepo_reviewed', 'thwepo_reviewed_time', 'thwepof_discount_popup', 'thwepof_deactivation_snooze');

