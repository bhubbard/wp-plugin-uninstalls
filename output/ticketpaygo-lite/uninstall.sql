-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ticketpaygo_lite_settings', 'tpgl_db_version', 'ticketpaygo_email_settings', 'tpgl_version', 'tpgl_activated', 'tpgl_currency_symbol', 'tpgl_elementor_notice_dismissed', 'tpgl_elementor_notice_shown', 'tpgl_settings', 'tpgl_force_db_check', 'ticketpaygo_tables_created', 'ticketpaygo_tables_error', 'tpgl_tables_created', 'tpgl_tables_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ticketpaygo_event_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ticketpaygo_event_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ticketpaygo_event_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ticketpaygo_event_data');

