-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jal_db_version', 'dsubscribers_unsubscribed_msg', 'dsubscribers_dont_exists_msg', 'dsubscribers_exists_msg', 'dsubscribers_send_checkbox', 'dsubscribers_message_block', 'dsubscribers_subscribed_msg');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

