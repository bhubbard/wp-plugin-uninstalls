-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aesirx_analytics_plugin_options', 'aesirx_consent_verify_plugin_options', 'aesirx_consent_modal_plugin_options', 'aesirx_consent_gpc_plugin_options', 'aesirx_consent_geo_plugin_options', 'aesirx_analytics_do_activation_redirect', 'aesirx_analytics_plugin_options_disabled_block_domains', 'aesirx_consent_ai_plugin_options', 'aesirx_privacy_policy_url', 'aesirx_analytics_flow_uuid', 'aesirx_analytics_update_notice', 'aesirx_consent_pro_upsell_notice');
DELETE FROM wp_options WHERE option_name LIKE '%]';

