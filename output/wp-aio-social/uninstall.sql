-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%fb_count';
DELETE FROM wp_options WHERE option_name LIKE '%yt_subs';
DELETE FROM wp_options WHERE option_name LIKE '%fb_count';
DELETE FROM wp_options WHERE option_name LIKE '%yt_subs';

