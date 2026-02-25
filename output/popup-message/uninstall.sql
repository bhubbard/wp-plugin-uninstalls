-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ac_custom_pupup_message', 'ac_pupup_message_display_time');

