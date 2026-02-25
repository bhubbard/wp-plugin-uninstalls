-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_wtwh_soundcloud_widget');
DELETE FROM wp_options WHERE option_name LIKE 'wtwh_soundcloud_trackID-%';
DELETE FROM wp_options WHERE option_name LIKE 'wtwh_soundcloud_pubDateID-%';
DELETE FROM wp_options WHERE option_name LIKE 'wtwh_soundcloud_title-%';

