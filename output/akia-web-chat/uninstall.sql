-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('akia_chat_website_token', 'akia_chat_office_name', 'akia_chat_powered_by_acknowledged');

