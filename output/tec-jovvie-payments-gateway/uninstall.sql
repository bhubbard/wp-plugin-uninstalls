-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tribe_events_calendar_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tec_tc_order_gateway');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tec_tc_order_gateway');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tec_tc_order_gateway');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tec_tc_order_gateway');

