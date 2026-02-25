-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpm_connector_connections', 'wpm_connector_hub_url', 'wpm_connector_token_hash', 'wpm_connector_user_id', 'wpm_connector_pairing');

