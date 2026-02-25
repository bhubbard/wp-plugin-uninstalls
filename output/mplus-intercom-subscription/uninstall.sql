-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mplusis_subscribe_company_field', 'mplusis_subscribe_company_register_page', 'mplusis_subscribe_to_intercom', 'mplusis_subscription_spam_protection', 'mplusis_subscription_type', 'mplusis_api_key', 'mplusis_shortcode_rendered', 'mplusis_removed_promo', 'mplusis_plugin_activated', 'mplusis_plugin_activated_at', 'mplusis_plugin_deactivated', 'mplusis_plugin_deactivated_at', 'mplusis_app_id', 'mplusis_promo_dismiss_time', 'mplusis_enable_chat', 'mplusis_own_api_key', 'intercom_oauth_nonce', 'mplusis_promo_notices');

