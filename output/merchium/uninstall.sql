-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('merchium_widget_code', 'merchium_store_page_id', 'merchium_installation_date', 'merchium_show_vote_message', 'merchium_widget_is_connected');

