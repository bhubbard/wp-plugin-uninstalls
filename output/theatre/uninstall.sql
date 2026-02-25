-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('theater_last_succesful_update_order_indexes_timestamp', 'wp_theatre', 'wpt_style', 'wpt_tickets', 'wpt_language', 'theatre', 'wpt_listing_page', 'wpt/production/permalink', 'wpt_version', 'update_plugins', 'wpt_extensions_promo_feed', 'wpt_listing_page_flush_rules');
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE '_transient_%';
DELETE FROM wp_options WHERE option_name LIKE '%_stats';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('city', 'event_date', 'enddate', '_wpt_event_tickets_price', 'remark', 'tickets_button', 'tickets_status', 'tickets_url', 'venue', '_wpt_source', '_wpt_source_ref', 'wp_theatre_season');
DELETE FROM wp_usermeta WHERE meta_key IN ('city', 'event_date', 'enddate', '_wpt_event_tickets_price', 'remark', 'tickets_button', 'tickets_status', 'tickets_url', 'venue', '_wpt_source', '_wpt_source_ref', 'wp_theatre_season');
DELETE FROM wp_termmeta WHERE meta_key IN ('city', 'event_date', 'enddate', '_wpt_event_tickets_price', 'remark', 'tickets_button', 'tickets_status', 'tickets_url', 'venue', '_wpt_source', '_wpt_source_ref', 'wp_theatre_season');
DELETE FROM wp_commentmeta WHERE meta_key IN ('city', 'event_date', 'enddate', '_wpt_event_tickets_price', 'remark', 'tickets_button', 'tickets_status', 'tickets_url', 'venue', '_wpt_source', '_wpt_source_ref', 'wp_theatre_season');

