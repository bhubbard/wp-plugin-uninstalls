-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yt_webtv_channel_tot');
DELETE FROM wp_options WHERE option_name LIKE 'yt_webtv_channel_%';

