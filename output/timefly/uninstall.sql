-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('timefly_uninstall_behavior', 'timefly_scan_post_types', 'timefly_usage_stats', 'timefly_install_date', 'timefly_settings_saved', 'timefly_block_scan_results');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('timefly_review_dismissed', 'timefly_review_dismissed_time', 'timefly_donation_shown', 'timefly_positive_review_action');
DELETE FROM wp_usermeta WHERE meta_key IN ('timefly_review_dismissed', 'timefly_review_dismissed_time', 'timefly_donation_shown', 'timefly_positive_review_action');
DELETE FROM wp_termmeta WHERE meta_key IN ('timefly_review_dismissed', 'timefly_review_dismissed_time', 'timefly_donation_shown', 'timefly_positive_review_action');
DELETE FROM wp_commentmeta WHERE meta_key IN ('timefly_review_dismissed', 'timefly_review_dismissed_time', 'timefly_donation_shown', 'timefly_positive_review_action');

