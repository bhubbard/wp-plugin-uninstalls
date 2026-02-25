-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kill_adBlock_status', 'kill_adBlock_random_class_name', 'kill_adBlock_message', 'kill_adBlock_message_delay', 'kill_adBlock_close_btn', 'kill_adBlock_close_automatically', 'kill_adBlock_close_automatically_delay', 'kill_adBlock_message_type');

