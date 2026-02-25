-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ms_total_slots', 'ms_slots_is_debug');
DELETE FROM wp_options WHERE option_name LIKE 'ms_slot_remarks%';
DELETE FROM wp_options WHERE option_name LIKE 'ms_slot%';

