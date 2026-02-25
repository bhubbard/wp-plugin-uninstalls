-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tp_event_meta_box_error_messages', 'thimpress_events', 'blog_name', 'thimpress-event-version', 'thimpress_events_show_remove_event_auth_notice');
DELETE FROM wp_options WHERE option_name LIKE '%_paypal_sanbox_email';
DELETE FROM wp_options WHERE option_name LIKE '%_paypal_email';
DELETE FROM wp_options WHERE option_name LIKE '%_paypal_enable';
DELETE FROM wp_options WHERE option_name LIKE 'thimpress_events_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ea_user_approved', 'ea_booking_note', 'tp_event_status', 'tp_event_date_start', 'tp_event_date_end', 'thimpress_event_auth_quantity', 'thimpress_event_auth_cost', 'tp_event_qty', 'tp_event_price', 'tp_event_time_start', 'tp_event_time_end', 'wpems_event_location', 'tp_event_location');
DELETE FROM wp_usermeta WHERE meta_key IN ('ea_user_approved', 'ea_booking_note', 'tp_event_status', 'tp_event_date_start', 'tp_event_date_end', 'thimpress_event_auth_quantity', 'thimpress_event_auth_cost', 'tp_event_qty', 'tp_event_price', 'tp_event_time_start', 'tp_event_time_end', 'wpems_event_location', 'tp_event_location');
DELETE FROM wp_termmeta WHERE meta_key IN ('ea_user_approved', 'ea_booking_note', 'tp_event_status', 'tp_event_date_start', 'tp_event_date_end', 'thimpress_event_auth_quantity', 'thimpress_event_auth_cost', 'tp_event_qty', 'tp_event_price', 'tp_event_time_start', 'tp_event_time_end', 'wpems_event_location', 'tp_event_location');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ea_user_approved', 'ea_booking_note', 'tp_event_status', 'tp_event_date_start', 'tp_event_date_end', 'thimpress_event_auth_quantity', 'thimpress_event_auth_cost', 'tp_event_qty', 'tp_event_price', 'tp_event_time_start', 'tp_event_time_end', 'wpems_event_location', 'tp_event_location');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%date_start';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%date_start';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%date_start';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%date_start';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%time_start';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%time_start';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%time_start';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%time_start';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%date_end';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%date_end';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%date_end';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%date_end';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%time_end';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%time_end';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%time_end';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%time_end';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%qty';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%qty';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%qty';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%qty';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%price';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%price';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%price';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%price';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%location';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%location';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%location';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%location';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ea_booking_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ea_booking_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ea_booking_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ea_booking_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tp_event_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tp_event_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tp_event_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tp_event_%';

