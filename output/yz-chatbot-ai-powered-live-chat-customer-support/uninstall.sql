-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yz_chatbot_settings', 'yz_chatbot_version', 'yz_chatbot_activation_redirect', 'yz_chatbot_tenant_verified');

