-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wizup_total_time_minutes', 'wizup_abandoned_cart_template_name', 'wizup_abandoned_cart_variables', 'wizup_access_token', 'wizup_templates', 'wizup_show_product_whatsapp_button', 'wizup_whatsapp_button_message_product', 'wizup_whatsapp_button_message_general', 'wizup_new_order_template_name', 'wizup_new_order_variables', 'wizup_delivered_order_template_name', 'wizup_delivered_order_variables', 'wizup_canceled_order_template_name', 'wizup_canceled_order_variables', 'new_order_template_name', 'new_order_variables', 'delivered_order_template_name', 'delivered_order_variables', 'canceled_order_template_name', 'canceled_order_variables', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_template_name';
DELETE FROM wp_options WHERE option_name LIKE 'wizup_cart_activity_%';
DELETE FROM wp_options WHERE option_name LIKE 'wizup_abandoned_cart_notification_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_whatsapp_optin', 'wizup_active_tab');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_whatsapp_optin', 'wizup_active_tab');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_whatsapp_optin', 'wizup_active_tab');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_whatsapp_optin', 'wizup_active_tab');

