-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stock_message_for_woocommerce_button_settings', 'stock_message_for_woocommerce_form_settings', 'stock_messages_table_created', 'stock_message_for_woocommerce_email_settings', 'stock_message_test_email_last_sent');
DELETE FROM wp_options WHERE option_name LIKE 'stock_message_verify_%';

