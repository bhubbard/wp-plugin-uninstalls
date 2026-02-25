-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_twitter_consumerkey';
DELETE FROM wp_options WHERE option_name LIKE '%_twitter_consumersecret';
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';

