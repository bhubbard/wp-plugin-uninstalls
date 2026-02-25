-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('validbot_api_key', 'validbot_email', 'validbot_subscriber');

