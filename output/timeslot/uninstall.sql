-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('timeslot-company-tab', 'timeslot-email-tab', 'timeslot-payment-methods-tab', 'timeslot-booking-form-tab', 'timeslot_plugin_version', 'timeslot_db_version', 'timeslot-setup-complete', 'timeslot-business-hours', 'timeslot-holidays', 'timeslot-service-categories', 'timeslot-appearance-tab', 'timeslot_import');

