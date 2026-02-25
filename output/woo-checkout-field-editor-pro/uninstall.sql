-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_fields_billing', 'wc_fields_shipping', 'wc_fields_additional', 'thwcfd_since', 'active_sitewide_plugins', 'woocommerce_shipping_cost_requires_address', 'woocommerce_ship_to_destination', 'thwcfd_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'wc_fields_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thwcfd_review_skipped', 'thwcfd_review_skipped_time', 'thwcfd_review_dismissed', 'thwcfd_review_dismissed_time', 'thwcfd_reviewed', 'thwcfd_reviewed_time', 'thwcfd_discount_popup', 'thwcfd_deactivation_snooze');
DELETE FROM wp_usermeta WHERE meta_key IN ('thwcfd_review_skipped', 'thwcfd_review_skipped_time', 'thwcfd_review_dismissed', 'thwcfd_review_dismissed_time', 'thwcfd_reviewed', 'thwcfd_reviewed_time', 'thwcfd_discount_popup', 'thwcfd_deactivation_snooze');
DELETE FROM wp_termmeta WHERE meta_key IN ('thwcfd_review_skipped', 'thwcfd_review_skipped_time', 'thwcfd_review_dismissed', 'thwcfd_review_dismissed_time', 'thwcfd_reviewed', 'thwcfd_reviewed_time', 'thwcfd_discount_popup', 'thwcfd_deactivation_snooze');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thwcfd_review_skipped', 'thwcfd_review_skipped_time', 'thwcfd_review_dismissed', 'thwcfd_review_dismissed_time', 'thwcfd_reviewed', 'thwcfd_reviewed_time', 'thwcfd_discount_popup', 'thwcfd_deactivation_snooze');

