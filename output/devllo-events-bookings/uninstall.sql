-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('devllo-events-bookings-payment-radio', 'devllo-events-bookings-pbc-instruction', 'devllo-event-registration-page', 'devllo-event-checkout-page', 'Activated_Plugin', 'DEVLLO_EVENTS_BOOKINGS_VERSION');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('devllo_event_price_key', 'devllo_event_event_link_key', 'devllo_event_url_key', 'devllo_event_location_key', '_start_day', '_start_month', '_start_year', '_end_day', '_end_month', '_end_year', '_start_hour', '_start_minute', '_end_hour', '_end_minute', 'devllo_event_location_name_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('devllo_event_price_key', 'devllo_event_event_link_key', 'devllo_event_url_key', 'devllo_event_location_key', '_start_day', '_start_month', '_start_year', '_end_day', '_end_month', '_end_year', '_start_hour', '_start_minute', '_end_hour', '_end_minute', 'devllo_event_location_name_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('devllo_event_price_key', 'devllo_event_event_link_key', 'devllo_event_url_key', 'devllo_event_location_key', '_start_day', '_start_month', '_start_year', '_end_day', '_end_month', '_end_year', '_start_hour', '_start_minute', '_end_hour', '_end_minute', 'devllo_event_location_name_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('devllo_event_price_key', 'devllo_event_event_link_key', 'devllo_event_url_key', 'devllo_event_location_key', '_start_day', '_start_month', '_start_year', '_end_day', '_end_month', '_end_year', '_start_hour', '_start_minute', '_end_hour', '_end_minute', 'devllo_event_location_name_key');

