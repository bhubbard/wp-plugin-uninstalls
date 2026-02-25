-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('klaviyo_settings', 'woocommerce_klaviyo_version', 'klaviyo_activation_time', 'klaviyo_feedback_response', 'klaviyo_review_dismissed', 'update_plugins', 'is_klaviyo_plugin_outdated');

