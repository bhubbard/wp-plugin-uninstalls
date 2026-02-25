-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('haendlerbund_api_token', 'haendlerbund_selected_options', 'haendlerbund_selected_page_ids', 'hbdocabruf');

