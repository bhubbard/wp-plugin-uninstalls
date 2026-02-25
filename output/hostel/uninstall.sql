-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wphostel_booking_mode', 'wphostel_email_options', 'wphostel_min_stay', 'hostelpro_cleanup_email_log', 'wphostel_booking_start', 'wphostel_ical_import_error', 'wphostel_locale_url', 'wphostel_datepicker_css', 'wphostel_currency', 'wphostel_version', 'wphostel_debug_mode', 'wphostel_cleanup_hours', 'wphostel_max_date', 'wphostel_paypal', 'wphostel_use_pdt', 'wphostel_pdt_token', 'wphostel_errorlog', 'wphostel_cleanup_db');

