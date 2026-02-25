-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tourbooking_options', 'tourbooking_colors', 'tourbooking_messages');

