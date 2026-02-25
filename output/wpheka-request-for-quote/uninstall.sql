-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpheka_rfq_general_settings', 'wpheka_request_for_quote_page_id', 'wpheka_rfq_installing');

