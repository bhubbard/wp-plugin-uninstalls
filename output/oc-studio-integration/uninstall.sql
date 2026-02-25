-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xapp_chat_widget_key', 'xapp_form_widget_key', 'xapp_search_widget_key');

