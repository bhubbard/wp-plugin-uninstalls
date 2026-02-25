-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('surefeedback_connection_id', 'surefeedback_site_id', 'surefeedback_bearer_token', 'surefeedback_organization_id', 'surefeedback_access_token', 'surefeedback_webhook_state', 'surefeedback_allowed_roles', 'surefeedback_page_settings', 'surefeedback_widget_control_enabled', 'surefeedback_site_token', 'surefeedback_parent_url', 'surefeedback_widget_script_url', 'surefeedback_is_fully_verified', 'surefeedback_last_verification', 'surefeedback_last_sync', 'surefeedback_verification_status', 'surefeedback_load_in_admin', 'surefeedback_activation_redirect');

