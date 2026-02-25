-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('streamlineconnect_settings', 'Streamlineconnect_api_key', 'streamlineconnect_enable_widget', 'streamline_api_key', 'streamlineconnect_api_key_image', 'settings_errors', 'streamline_subscription_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('streamline_subscription_id', 'streamline_subscription_plan');
DELETE FROM wp_usermeta WHERE meta_key IN ('streamline_subscription_id', 'streamline_subscription_plan');
DELETE FROM wp_termmeta WHERE meta_key IN ('streamline_subscription_id', 'streamline_subscription_plan');
DELETE FROM wp_commentmeta WHERE meta_key IN ('streamline_subscription_id', 'streamline_subscription_plan');

