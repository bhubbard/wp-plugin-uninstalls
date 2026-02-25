-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_settings_tab_tcs_username', 'wc_settings_tab_tcs_password', 'wc_settings_tab_tcs_cost_center_code', 'wc_settings_tab_tcs_origin_city');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ywot_picked_up', 'ywot_tracking_code', 'ywot_carrier_name', 'ywot_pick_up_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('ywot_picked_up', 'ywot_tracking_code', 'ywot_carrier_name', 'ywot_pick_up_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('ywot_picked_up', 'ywot_tracking_code', 'ywot_carrier_name', 'ywot_pick_up_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ywot_picked_up', 'ywot_tracking_code', 'ywot_carrier_name', 'ywot_pick_up_date');

