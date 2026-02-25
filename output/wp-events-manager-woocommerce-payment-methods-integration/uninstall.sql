-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thimpress_events_email_register_times', 'thimpress_events_woo_event_register_process', 'thimpress_events_woo_payment_enable');
DELETE FROM wp_options WHERE option_name LIKE '%woo_payment_enable';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tp_event_woo_order', '_tp_event_event_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tp_event_woo_order', '_tp_event_event_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tp_event_woo_order', '_tp_event_event_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tp_event_woo_order', '_tp_event_event_order');

