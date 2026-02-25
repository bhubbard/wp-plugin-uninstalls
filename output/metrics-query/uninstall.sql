-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gadwp_got_updated', 'gadwp_redeemed_code', 'gadwp_network_options', 'gadwp_options', 'gadwp_version', 'gadash_network_options', 'gadash_options', 'ga_dash_token', 'ga_dash_clientid', 'ga_dash_clientsecret', 'ga_dash_tableid_jail', 'ga_dash_frontend', 'ga_dash_jailadmins', 'ga_dash_tracking_type', 'ga_dash_anonim', 'ga_dash_userapi', 'ga_event_tracking', 'ga_event_downloads', 'ga_target_geomap', 'ga_realtime_pages', 'ga_dash_profile_list', 'ga_dash_access', 'ga_dash_access_front', 'ga_dash_access_back', 'ga_dash_style', 'ga_dash_tracking', 'track_exclude', 'ga_dash_refresh_token');
DELETE FROM wp_options WHERE option_name LIKE 'gadwp_cache_%';

