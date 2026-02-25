-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Twitter_HashTag');
DELETE FROM wp_options WHERE option_name LIKE 'tweets_has_%';

