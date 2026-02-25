-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mwb_hubwoo_guest_user_cart', 'hubwoo_pro_newgroups_saved', 'hubwoo_lock', 'hubwoo_setup_completed', 'hubwoo_alert_param_set', 'hubwoo_oauth_success', 'hubwoo_valid_client_ids_stored', 'hubwoo_free_property_update', 'hubwoo-free-success-api-calls', 'hubwoo-free-error-api-calls', 'hubwoo_invalid_emails', 'hubwoo_abncart_added', 'hubwoo_suggestions_sent', 'hubwoo_token_expiry', 'hubwoo_suggestions_later', 'hubwoo_free_version', 'hubwoo_newversion_groups_saved', 'hubwoo_get_started', 'hubwoo_refresh_token', 'hubwoo_access_token', 'hubwoo_ecomm_bridge_enabled', 'hubwoo_send_suggestions', 'hubwoo_api_validation_error_message', 'hubwoo_account_scopes', 'hubwoo_log_enable', 'hubwoo_settings_enable', 'hubwoo_owners_portal');
DELETE FROM wp_options WHERE option_name LIKE 'hubwoo_active_group%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hubwoo_user_data_change', 'hubwoo_pro_user_cart_sent', '_customer_user', 'hubwoo_vid', 'hubwoo_modified_fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('hubwoo_user_data_change', 'hubwoo_pro_user_cart_sent', '_customer_user', 'hubwoo_vid', 'hubwoo_modified_fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('hubwoo_user_data_change', 'hubwoo_pro_user_cart_sent', '_customer_user', 'hubwoo_vid', 'hubwoo_modified_fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hubwoo_user_data_change', 'hubwoo_pro_user_cart_sent', '_customer_user', 'hubwoo_vid', 'hubwoo_modified_fields');

