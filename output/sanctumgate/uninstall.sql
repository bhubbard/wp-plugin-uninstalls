-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sanctumgate_delete_on_uninstall', 'sanctumgate_usage_stats', 'sac_allowed_pages', 'sac_allowed_categories');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sanctumgate_review_dismissed', 'sanctumgate_review_dismissed_time', 'sanctumgate_donation_shown', 'sanctumgate_positive_review_action');
DELETE FROM wp_usermeta WHERE meta_key IN ('sanctumgate_review_dismissed', 'sanctumgate_review_dismissed_time', 'sanctumgate_donation_shown', 'sanctumgate_positive_review_action');
DELETE FROM wp_termmeta WHERE meta_key IN ('sanctumgate_review_dismissed', 'sanctumgate_review_dismissed_time', 'sanctumgate_donation_shown', 'sanctumgate_positive_review_action');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sanctumgate_review_dismissed', 'sanctumgate_review_dismissed_time', 'sanctumgate_donation_shown', 'sanctumgate_positive_review_action');

