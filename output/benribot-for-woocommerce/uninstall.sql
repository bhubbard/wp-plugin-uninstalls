-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('benribot_widget_embedded', 'benribot_client_key', 'benribot_connected', 'benribot_oauth_state', 'benribot_secret_key', 'benribot_consumer_key', 'benribot_consumer_secret', 'benribot_wc_api_key_id');

