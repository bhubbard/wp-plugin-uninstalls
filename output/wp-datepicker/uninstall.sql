-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpdp_range', 'wpdp_enqueue_url', 'wp_datepicker_wpadmin', 'wpdp_options', 'wpdp_developer_options', 'wpdp_previous_version_compatible', 'wp_datepicker', 'wp_datepicker_language', 'wp_datepicker_weekends', 'wp_datepicker_autocomplete', 'wp_datepicker_beforeShowDay', 'wp_datepicker_months', 'wp_datepicker_readonly', 'wpdp_fonts', 'wpdp_global_settings');

