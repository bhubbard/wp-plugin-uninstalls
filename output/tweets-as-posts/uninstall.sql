-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tap_hashtags', 'tap_usernames', 'tap_category', 'tap_user', 'tap_add_news_to_db', 'tap_exceptions', 'tap_version');

