-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woch_version', 'woch_mon_web_status', 'woch_tues_web_status', 'woch_wed_web_status', 'woch_thurs_web_status', 'woch_fri_web_status', 'woch_sat_web_status', 'woch_sun_web_status', 'woch_mon_open_time', 'woch_mon_close_time', 'woch_tues_open_time', 'woch_tues_close_time', 'woch_wed_open_time', 'woch_wed_close_time', 'woch_thurs_open_time', 'woch_thurs_close_time', 'woch_fri_open_time', 'woch_fri_close_time', 'woch_sat_open_time', 'woch_sat_close_time', 'woch_sun_open_time', 'woch_sun_close_time', 'woch_RefererValue', 'woch_RefererValue_page', 'woch_redirect_type', 'gwl-webopenclose-admin-notice-activation');

