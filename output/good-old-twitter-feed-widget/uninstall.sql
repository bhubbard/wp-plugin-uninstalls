-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('good_old_twitter_widget');
DELETE FROM wp_options WHERE option_name LIKE '%_valid';
DELETE FROM wp_options WHERE option_name LIKE '%_status';

