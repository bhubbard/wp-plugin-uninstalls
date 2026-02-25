-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chatasbot_client_id', 'chatasbot_api_key', 'chatasbot_base_url');

