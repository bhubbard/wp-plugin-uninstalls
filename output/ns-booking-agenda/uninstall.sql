-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ns_agenda_week_hour_start', 'ns_agenda_week_hour_end', 'ns_agenda_cancelled_agenda_email', 'ns_agenda_outlook_client_id', 'ns_agenda_outlook_client_secret', 'ns_agenda_starting_year_period_opt', 'ns_agenda_ending_year_period_opt', 'woocommerce_myaccount_page_id', 'prima_update', 'dopo_update', 'ns_agenda_is_hourly', 'ns_agenda_custom_hour_week', 'outlook_prod_id', 'ns_agenda_year_struct', 'ns_agenda_cart_key');
DELETE FROM wp_options WHERE option_name LIKE 'ns_agenda_option_struct_%';
DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%';
DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product_category', 'date_in', 'hour_in', 'hour_out', 'product_name', '_bookable', '_price', 'date_out', 'ns_agenda_state', 'product_id', 'ns_agenda_quantity', 'product_price', 'booking_state', 'outlook_already_exported', 'ns_agenda_hourly_price', '_wp_page_template', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('product_category', 'date_in', 'hour_in', 'hour_out', 'product_name', '_bookable', '_price', 'date_out', 'ns_agenda_state', 'product_id', 'ns_agenda_quantity', 'product_price', 'booking_state', 'outlook_already_exported', 'ns_agenda_hourly_price', '_wp_page_template', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('product_category', 'date_in', 'hour_in', 'hour_out', 'product_name', '_bookable', '_price', 'date_out', 'ns_agenda_state', 'product_id', 'ns_agenda_quantity', 'product_price', 'booking_state', 'outlook_already_exported', 'ns_agenda_hourly_price', '_wp_page_template', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product_category', 'date_in', 'hour_in', 'hour_out', 'product_name', '_bookable', '_price', 'date_out', 'ns_agenda_state', 'product_id', 'ns_agenda_quantity', 'product_price', 'booking_state', 'outlook_already_exported', 'ns_agenda_hourly_price', '_wp_page_template', '_thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_price';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_price';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_price';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_price';

