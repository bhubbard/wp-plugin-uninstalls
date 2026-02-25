-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_group_review_email_settings', 'bgr_admin_criteria_settings', 'bgr_admin_general_settings', 'bgr_admin_display_settings', 'bp-active-components');
DELETE FROM wp_options WHERE option_name LIKE 'bgr_review_count_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('linked_group', 'review_star_rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('linked_group', 'review_star_rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('linked_group', 'review_star_rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('linked_group', 'review_star_rating');

