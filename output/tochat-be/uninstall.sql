-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tochatbe_appearance_settings', 'tochatbe_basic_settings', 'tochatbe_gdpr_settings', 'tochatbe_type_and_chat_settings', 'tochatbe_just_whatsapp_icon_settings', 'tochatbe_google_analytics_settings', 'tochatbe_facebook_analytics_settings', 'tochatbe_woo_order_button_settings', 'tochatbe_just_whatsapp_icon_notice_dismiss', 'tochatbe_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('agent_name', 'agent_title', 'agent_number', 'agent_group_id', 'agent_type', 'pre_defined_message', '_tochatbe_about_message', 'billing_phone', 'shipping_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('agent_name', 'agent_title', 'agent_number', 'agent_group_id', 'agent_type', 'pre_defined_message', '_tochatbe_about_message', 'billing_phone', 'shipping_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('agent_name', 'agent_title', 'agent_number', 'agent_group_id', 'agent_type', 'pre_defined_message', '_tochatbe_about_message', 'billing_phone', 'shipping_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('agent_name', 'agent_title', 'agent_number', 'agent_group_id', 'agent_type', 'pre_defined_message', '_tochatbe_about_message', 'billing_phone', 'shipping_phone');

