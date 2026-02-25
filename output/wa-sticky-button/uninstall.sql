-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('okapi_wasb_activate', 'okapi_wasb_display_on_mobile', 'okapi_wasb_display_on_tablet', 'okapi_wasb_display_on_desktop', 'okapi_wasb_position', 'okapi_wasb_number', 'okapi_wasb_msg', 'okapi_wasb_width', 'okapi_wasb_height', 'okapi_wasb_margin', 'okapi_wasb_icon_type', 'okapi_wasb_icon_id');

