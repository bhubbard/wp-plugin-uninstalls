-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_db_version', 'woocommerce_registrations_is_active', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_event_start_time', '_event_end_time', 'attribute_dates', '_week_days', '_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_event_start_time', '_event_end_time', 'attribute_dates', '_week_days', '_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_event_start_time', '_event_end_time', 'attribute_dates', '_week_days', '_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_event_start_time', '_event_end_time', 'attribute_dates', '_week_days', '_product_attributes');

