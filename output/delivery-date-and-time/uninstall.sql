-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_settings_ddt_start_time', 'wc_settings_ddt_end_time', 'wc_settings_ddt_interval');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('order_delivery_date_and_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('order_delivery_date_and_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('order_delivery_date_and_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('order_delivery_date_and_time');

