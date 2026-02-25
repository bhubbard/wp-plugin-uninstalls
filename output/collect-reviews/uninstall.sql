-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('collect_reviews_initial_version', 'collect_reviews_initial_activation_time', 'collect_reviews_version');

