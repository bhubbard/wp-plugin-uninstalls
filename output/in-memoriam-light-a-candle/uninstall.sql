-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ct_activated', 'ct_prompted', 'imlac_candle_publish_notification');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('candle_prayer_name', 'candle_prayer_email', 'candle_prayer_location_name', 'candle_title_email', 'candle_prayer_location');
DELETE FROM wp_usermeta WHERE meta_key IN ('candle_prayer_name', 'candle_prayer_email', 'candle_prayer_location_name', 'candle_title_email', 'candle_prayer_location');
DELETE FROM wp_termmeta WHERE meta_key IN ('candle_prayer_name', 'candle_prayer_email', 'candle_prayer_location_name', 'candle_title_email', 'candle_prayer_location');
DELETE FROM wp_commentmeta WHERE meta_key IN ('candle_prayer_name', 'candle_prayer_email', 'candle_prayer_location_name', 'candle_title_email', 'candle_prayer_location');

