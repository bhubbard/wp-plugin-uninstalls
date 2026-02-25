-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clickcease_bot_zapping_authenticated', 'clickcease_api_key', 'clickcease_domain_key', 'clickcease_secret_key', 'clickcease_remove_tracking', 'clickcease_whitelist', 'clickcease_client_id', 'secret_checked', 'cheq_invalid_secret', 'monitoring', 'cc_version_updated', 'cc_send_plugin_state', 'cc_check_plugin_state');

