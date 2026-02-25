-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cartshark_tracker_enabled', 'cartshark_account_id', 'cartshark_website_id', 'cartshark_activated_time', 'cartshark_version', 'cartshark_requirements_met', 'cartshark_missing_requirements', 'cartshark_setup_complete', 'cartshark_tracker_status', 'cartshark_subscription_status', 'cartshark_user_data', 'cartshark_public_key_encrypted', 'cartshark_private_key_encrypted', 'cartshark_api_keys_updated', 'cartshark_encryption_key', 'cartshark_tracker_snippet', 'cartshark_tracker_version', 'cartshark_tracker_last_updated', 'cartshark_last_sync', 'cartshark_activation_date', 'cartshark_first_activation', 'cartshark_delete_data_on_uninstall', 'cartshark_auth_token', 'cartshark_account_stats', 'cartshark_website_data', 'cartshark_subscription_data', 'cartshark_tracker_status', 'cartshark_api_cache');

