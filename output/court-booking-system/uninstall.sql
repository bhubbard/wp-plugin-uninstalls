-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pcb_version', 'pcb_default_currency', 'pcb_start_hour', 'pcb_end_hour', 'pcb_number_of_courts', 'pcb_booking_message');

