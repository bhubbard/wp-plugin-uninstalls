-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_app_onsite_fresh_install', 'ai_app_onsite_encryption_key', 'ai_app_onsite_encryption_iv', 'ai_app_onsite_api_key', 'aiapp_server_base_url', 'ai_app_onsite_unique_id', 'ai_app_license_last_checked', 'aiapp_client_credentials', 'ai_app_onsite_accepted_tos_version', 'is_hackathon_user', 'domain_access_allowed', 'ai_app_onsite_plugin_was_updated');

