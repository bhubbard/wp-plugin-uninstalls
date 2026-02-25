-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clbntb_phone_bar', 'clbntb_location_bottom', 'setting_size', 'clbntb_location', 'clbntb_off_effects', 'clbntb_hide_mobile', 'clbntb_hide_desktop', 'clbntb_hide_default_all_in_one', 'clbntb_enable_all_in_one');
DELETE FROM wp_options WHERE option_name LIKE 'clbntb_color_%';

