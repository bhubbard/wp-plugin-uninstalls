-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_event_google_api_key', 'allow_google_calandar', 'show_google_map_on_product', 'passed_events_purchasable', 'only_events');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('event_datetime', 'event_end_date', 'custom_add_to_cart', 'expire_product', 'address', 'event_lat', 'event_lang');
DELETE FROM wp_usermeta WHERE meta_key IN ('event_datetime', 'event_end_date', 'custom_add_to_cart', 'expire_product', 'address', 'event_lat', 'event_lang');
DELETE FROM wp_termmeta WHERE meta_key IN ('event_datetime', 'event_end_date', 'custom_add_to_cart', 'expire_product', 'address', 'event_lat', 'event_lang');
DELETE FROM wp_commentmeta WHERE meta_key IN ('event_datetime', 'event_end_date', 'custom_add_to_cart', 'expire_product', 'address', 'event_lat', 'event_lang');

