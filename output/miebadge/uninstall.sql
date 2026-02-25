-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('miebadge_settings', 'miebadge_install_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('miebadge_review_dismissed', 'miebadge_review_dismissed_time', 'miebadge_donation_shown', 'miebadge_positive_review_action');
DELETE FROM wp_usermeta WHERE meta_key IN ('miebadge_review_dismissed', 'miebadge_review_dismissed_time', 'miebadge_donation_shown', 'miebadge_positive_review_action');
DELETE FROM wp_termmeta WHERE meta_key IN ('miebadge_review_dismissed', 'miebadge_review_dismissed_time', 'miebadge_donation_shown', 'miebadge_positive_review_action');
DELETE FROM wp_commentmeta WHERE meta_key IN ('miebadge_review_dismissed', 'miebadge_review_dismissed_time', 'miebadge_donation_shown', 'miebadge_positive_review_action');

