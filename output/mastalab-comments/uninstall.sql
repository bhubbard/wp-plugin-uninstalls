-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tom79_mastalab_comments_db_version');
DELETE FROM wp_options WHERE option_name LIKE '%settings';
DELETE FROM wp_options WHERE option_name LIKE '%account';
DELETE FROM wp_options WHERE option_name LIKE '%preferences';
DELETE FROM wp_options WHERE option_name LIKE '%preferences[peertubecomments]';
DELETE FROM wp_options WHERE option_name LIKE '%preferences[mastodon_bg]';
DELETE FROM wp_options WHERE option_name LIKE '%preferences[mastodon_text]';
DELETE FROM wp_options WHERE option_name LIKE '%preferences[mastodon_link]';
DELETE FROM wp_options WHERE option_name LIKE '%preferences[peertube_bg]';
DELETE FROM wp_options WHERE option_name LIKE '%preferences[peertube_text]';
DELETE FROM wp_options WHERE option_name LIKE '%preferences[peertube_link]';
DELETE FROM wp_options WHERE option_name LIKE '%preferences[cache]';
DELETE FROM wp_options WHERE option_name LIKE '%preferences[selector]';
DELETE FROM wp_options WHERE option_name LIKE '%preferences[where]';

