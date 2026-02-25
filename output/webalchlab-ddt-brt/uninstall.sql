-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brt-dtt-next_number', 'brt-dtt-mitt_default', 'brt-dtt-tracking_enable', 'brt-dtt-tracking_required', 'brt-dtt-tracking_length', 'brt-dtt-checkformat', 'brt-dtt-cod-mitt');

