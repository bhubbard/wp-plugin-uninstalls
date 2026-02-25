-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('show_programm_icons', 'ground_ids', 'message_below', 'show_capacity', 'show_price');

