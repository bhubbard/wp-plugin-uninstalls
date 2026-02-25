-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpthumbtack_thumbtack_settings', 'wpthumbtack_hidden_reviews');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

