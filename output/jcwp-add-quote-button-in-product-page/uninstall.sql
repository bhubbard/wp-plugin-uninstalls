-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jcwp_quote_option_field_phone_number', 'jcwp_quote_option_field_button_text', 'jcwp_quote_option_field_message_text', 'jcwp_quote_option_field_show_on_product_page', 'jcwp_quote_option_field_show_on_shop_page', 'jcwp_quote_option_field_show_on_categories');

