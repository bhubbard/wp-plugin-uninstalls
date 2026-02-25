-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('google_map_api_key', 'datapress_et_phone_home', 'datapress_privacy_notice_shown');

