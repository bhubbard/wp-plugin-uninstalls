-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yd-buddypress-feed-syndication', 'YD_P_hourly', 'YD_P_daily', 'YD_P_last_action');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('yd_syndications', 'yd_syndications_status', 'yd_syndications_refresh', 'yd_syndications_title', 'yd_syndications_updated');
DELETE FROM wp_usermeta WHERE meta_key IN ('yd_syndications', 'yd_syndications_status', 'yd_syndications_refresh', 'yd_syndications_title', 'yd_syndications_updated');
DELETE FROM wp_termmeta WHERE meta_key IN ('yd_syndications', 'yd_syndications_status', 'yd_syndications_refresh', 'yd_syndications_title', 'yd_syndications_updated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('yd_syndications', 'yd_syndications_status', 'yd_syndications_refresh', 'yd_syndications_title', 'yd_syndications_updated');

